# Customer Segmentation Analysis

## 1-Introduction
Welcome to my portfolio project on customer segmentation. In this project, first we utilize python to conduct our analysis, then we have used unsupervised machine learning techniques, specifically K-means clustering, to segment customers and identify distinct groups for targeted marketing campaigns and sales strategies.

## 2-Data
The dataset contains the following variables:

- **CustomerID**: Unique identifier for each customer.
- **Gender**: Gender of the customer.
- **Age**: Age of the customer.
- **Annual Income (k$)**: Annual income of the customer.
- **Spending Score (1-100)**: Spending score assigned to the customer based on their spending behavior.
  
## 3-Project Overview

1. **Import Libraries**: We start by importing necessary libraries for data manipulation (Pandas), visualization (Matplotlib and Seaborn), and machine learning (Scikit-learn).
2. **Load Dataset**: The dataset containing customer information is loaded from a CSV file.
3. **Data Inspection**: We inspect the dataset to understand its structure and identify any data cleaning requirements.
4. **Data Cleaning**: We ensure data integrity by checking for duplicate values and missing data.
5. **Exploratory Data Analysis (EDA)**: We analyze the dataset to gain insights into customer demographics, spending habits, and gender distribution, via univariate and multivariate analysis.
6. **Clustering**: We apply the K-means clustering algorithm to segment customers based on annual income and spending score.
7. **Visualization**: We visualize the clusters to understand the distinct customer groups and their characteristics.
8. **Insights**: We draw conclusions based on the clustering results and identify key target groups for marketing campaigns.
   
## 4-Insights

1. **Segment 1 (Cluster 0)**:
   - **Characteristics**: Modest incomes with higher spending scores.
   - **Demographics**: Predominantly comprises females (59%) and males (41%), mainly within the 18-35 age range.
   - **Marketing Strategy**: Likely responsive to promotional activities, targeting style and trends.

2. **Segment 2 (Cluster 2)**:
   - **Characteristics**: Higher incomes and significant spending scores.
   - **Demographics**: Slightly more balanced gender distribution (54% females, 46% males), aged between 27-40 years old.
   - **Marketing Strategy**: Potential for investment in quality and luxury products, targeting established career professionals.

![Clustering visualization](https://github.com/jpheredia/Portfolio-Projects/blob/main/Customer%20Segmentation/2.Analysis/Target.png)
---

Thank you for exploring my project on customer segmentation. I hope this project has provided a clear view of my work.
