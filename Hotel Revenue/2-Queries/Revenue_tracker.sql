--- The query will retrieve the gross and net revenue per hotel and year

WITH hotels AS (
    SELECT * FROM dbo.['2018$']
    UNION
    SELECT * FROM dbo.['2019$']
    UNION
    SELECT * FROM dbo.['2020$']
),

meal_revenue AS (
    SELECT 
        arrival_date_year, 
        hotel,
        ROUND(SUM((stays_in_week_nights + stays_in_weekend_nights) * mc.Cost), 2) AS yearly_meals_revenue
    FROM 
        hotels 
    JOIN 
        dbo.meal_cost$ mc ON hotels.meal = mc.meal
    WHERE 
        reservation_status = 'Check-Out' OR reservation_status = 'No-Show'
    GROUP BY 
        arrival_date_year, hotel
),

gross_revenue AS (
    SELECT
        arrival_date_year, 
        hotel,
        ROUND(SUM((stays_in_week_nights + stays_in_weekend_nights) * adr), 2) AS booking_yearly_gross_revenue,
        ROUND(SUM((stays_in_week_nights + stays_in_weekend_nights) * adr * (ms.discount)), 2) AS booking_yearly_total_discounts
    FROM 
        hotels 
    JOIN 
        dbo.market_segment$ ms ON hotels.market_segment = ms.market_segment
    WHERE 
        reservation_status = 'Check-Out' OR reservation_status = 'No-Show'
    GROUP BY 
        arrival_date_year, hotel
),

net_revenue AS (
	SELECT
		gross_revenue.arrival_date_year, 
		gross_revenue.hotel,
		booking_yearly_gross_revenue,
		booking_yearly_total_discounts,
		yearly_meals_revenue,
		ROUND((booking_yearly_gross_revenue - booking_yearly_total_discounts), 2) AS booking_yearly_net_revenue,
		ROUND((booking_yearly_gross_revenue - booking_yearly_total_discounts + yearly_meals_revenue), 2) AS yearly_net_revenue
	FROM gross_revenue 
	LEFT JOIN
	meal_revenue ON gross_revenue.hotel = meal_revenue.hotel AND gross_revenue.arrival_date_year = meal_revenue.arrival_date_year
)

SELECT
	arrival_date_year, 
	hotel,
	booking_yearly_gross_revenue,
	booking_yearly_total_discounts,
	booking_yearly_net_revenue,
	yearly_meals_revenue,
	yearly_net_revenue,
	yearly_net_revenue - LAG (yearly_net_revenue,1,NULL) OVER (PARTITION BY hotel ORDER BY arrival_date_year) AS net_revenue_change

FROM net_revenue