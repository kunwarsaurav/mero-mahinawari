# 📊 Consumer Engagement & Trend Analysis: Mero Mahinawari

## 📌 Project Overview
This repository contains an end-to-end Exploratory Data Analysis (EDA) and user engagement study for **Mero Mahinawari**, a period-tracking application based in Nepal. The primary objective of this data initiative is to analyze user behavior, map retention lifecycles, and extract actionable, data-driven insights to inform product development and feature prioritization.

## 👥 Data & Analytics Team
This project was collaboratively developed and analyzed by:
* **Saurav Kunwar**
* **Rohan Aryal**
* **Ashim Pandey**
* **Sakshyam Bhandari**

## 🎯 Key Objectives & Impact
* **Engagement & Retention Tracking:** Mapped retention curves and identified critical drop-off points across a user base of **1,500+ monthly active users (MAU)**.
* **Exploratory Data Analysis (EDA):** Leveraged **SQL** for robust data extraction and **Python (Pandas)** to uncover platform growth trends and feature utilization rates.
* **Data Engineering & Structuring:** Processed, cleaned, and structured raw production logs—specifically handling anomalous session durations, missing data (NaNs), and extreme outliers—to ensure high-fidelity business insights.

## 📂 Repository Architecture
* `📁 /data` — Contains the raw, anonymized user engagement logs (`mero_mahinawari_engagement_log.csv`).
* `📁 /sql` — Houses the standard SQL queries utilized for extracting session data and aggregating overall MAU metrics.
* `📁 /notebooks` — Includes the core Jupyter Notebook (`engagement_analysis.ipynb`) detailing the data cleaning pipeline, statistical visualizations, and insight generation.

## 🛠️ Tech Stack
* **Database Management:** SQL (MySQL/PostgreSQL)
* **Data Manipulation & Analysis:** Python (Pandas, NumPy)
* **Data Visualization:** Matplotlib, Seaborn
* **Development Environment:** Jupyter Notebook

## 📈 Executive Insights & Recommendations
*(Note: Comprehensive visualizations and statistical breakdowns are available in the `/notebooks` directory.)*

1. **Feature Dominance:** The core "Period Tracker" utility drives the highest volume of daily sessions. However, the "Community Forum" exhibits significantly higher average session durations, indicating a highly engaged sub-community.
2. **Retention Bottleneck:** Cohort analysis revealed a measurable drop in user engagement following the first 7 days post-registration. 
   * **Strategic Recommendation:** Implement targeted, automated push notifications at the 7-day mark and prior to the user's next predicted cycle to mitigate churn and improve Day-30 retention rates.