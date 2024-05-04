# Data Analysis for Hotel Management

## 1- Introduction

Welcome to my data analysis project for the hotel industry! In this project, we'll explore how I use data to inform key decisions in hotel management. from evaluating annual performance to projecting the viability of new expansion projects. But before diving into the details, let me take you through this data story.

As Hotels & Hotels Data Analyst, I am asked to present compelling analytical results to stakeholders in order to make data-driven decisions about the actual situation of the company and the viability of expanding the parking spaces. 

## 2- Data
The data used comes from an .xlsx document where we have 5 tables:

- **2018**, **2019**, **2020** that correspond to the information about the bookings for each hotel and year
- **meal_cost** where we find the name of the meal and their cost
- **market_segment** where we can find the information about the booking discount each client group has

## 3- Project Objectives

1. Evaluate the hotel's actual financial performance
2. Analyze the viability of opening new parking spaces for each hotel
3. Design a dashboard in order to present the results in a visually and understandable manner 

## 4- Process and Technologies Used

### Data Extraction
As the data was spread across multiple tables in an Excel file, I used SQL queries to extract and transform the relevant information.

### Data Analysis

#### SQL Query 1: Revenue Tracker
- This query calculates gross and net income per hotel and year.
- It includes income from accommodations and meals.
- Finally I used window functions to analyze the evolution of net income per hotel.

#### SQL Query 2: Main
- This query relates multiple data tables for use in Power BI, that forms the basis for creating the interactive dashboard.

Note: To inspect the queries please check [this folder](https://github.com/jpheredia/Portfolio-Projects/tree/main/Hotel%20Revenue/2-Queries)

### Data Visualization
- I used Power BI to create clear and effective visualizations about the KPIs, as well as the revenue evolution and the viability of parking spaces acquisition.

Note: To inspect the PowerBI document please check [this folder](https://github.com/jpheredia/Portfolio-Projects/tree/main/Hotel%20Revenue/3-Report)

## 5- Results
![](https://github.com/jpheredia/Portfolio-Projects/blob/main/Hotel%20Revenue/3-Report/PowerBI_report.png)

## Next Steps

- Continue monitoring the hotel's performance and adjusting strategies as needed.
- Explore new data sources to enrich the analysis.
- Investigate seasonality to study patterns.
---

Thank you for exploring my data analysis project for hotel management! I hope this story has provided a clear view of my work.
