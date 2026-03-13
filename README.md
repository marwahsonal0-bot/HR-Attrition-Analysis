# HR Attrition Analysis

## Project Overview

This project analyzes employee attrition to identify the key factors influencing employee turnover in an organization. Using Python, SQL, and Power BI, the analysis explores patterns related to departments, job roles, overtime, and work-life balance to uncover insights that can help HR teams reduce attrition.

---

## Tools & Technologies

* Python (Pandas, Matplotlib, Seaborn)
* SQL (PostgreSQL)
* Power BI
* VS Code

---

## Dataset

The dataset used in this project is the **IBM HR Attrition Dataset**, which contains information about employees such as age, department, job role, monthly income, overtime, and work-life balance.

Total records: **1470 employees**
Total features: **35 columns**

Dataset Source
Kaggle – IBM HR Analytics Employee Attrition Dataset

---

## Project Structure

HR-Attrition-Analysis
│
├── data
│   ├── WA_Fn-UseC_-HR-Employee-Attrition.csv
│   └── hr_attrition_cleaned.csv
│
├── notebooks
│   └── hr_attrition_analysis.ipynb
│
├── sql
│   └── hr_attrition_queries.sql
│
├── dashboard
│   └── HR_Attrition_Dashboard.pbix
│
└── README.md

---

## Analysis Performed

### 1. Data Cleaning (Python)

* Checked for missing values
* Verified data types
* Created an `Attrition_Flag` column for analysis

### 2. Exploratory Data Analysis

Visualized patterns such as:

* Attrition distribution
* Attrition by department
* Attrition by job role
* Attrition vs overtime
* Attrition vs work-life balance

### 3. SQL Analysis

Business queries were written to analyze:

* Overall attrition rate
* Attrition by department
* Attrition by job role
* Attrition by overtime
* Attrition by work-life balance

### 4. Power BI Dashboard

An interactive HR dashboard was created with:

**KPIs**

* Total Employees
* Employees Left
* Attrition Rate

**Visualizations**

* Attrition by Department
* Attrition by Job Role
* Attrition by Overtime
* Attrition by Work-Life Balance

**Filters**

* Department
* Gender
* Job Role

---

## Key Insights

* Overall attrition rate is **16.12%**
* The **Research & Development** and **Sales** departments show higher attrition.
* Employees working **overtime** are more likely to leave the company.
* Lower **work-life balance** correlates with higher attrition.
* Certain roles such as **Sales Executive** and **Laboratory Technician** experience higher turnover.

---

## Dashboard Preview

Power BI dashboard used to visualize HR attrition patterns and identify key factors influencing employee turnover.

---

## Author

Sonal Marwah
