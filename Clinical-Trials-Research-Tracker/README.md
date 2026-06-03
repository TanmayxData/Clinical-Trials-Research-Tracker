# Clinical Trials Research Tracker (TCRT)

## Project Overview

The Clinical Trials Research Tracker (TCRT) is an end-to-end healthcare analytics project that collects, cleans, validates, analyzes, and visualizes clinical trial data from ClinicalTrials.gov.

The project provides insights into clinical trial activity across study phases, sponsors, disease areas, countries, and timelines using Python, MySQL, and Power BI.

---

## Objectives

* Collect structured clinical trial data from ClinicalTrials.gov
* Clean and validate data using Python and Pandas
* Perform SQL-based healthcare analytics
* Build interactive Power BI dashboards
* Generate actionable insights from clinical research data

---

## Dataset Source

ClinicalTrials.gov

Data collected includes:

* NCT Number
* Study Title
* Study Status
* Conditions
* Sponsor
* Phase
* Study Type
* Start Date
* Completion Date
* Locations
* Country

---

## Project Workflow

### 1. Data Collection

Collected clinical trial records from ClinicalTrials.gov and stored them in a structured CSV format.

**Output:**

* clinical_trials.csv

---

### 2. Data Cleaning & Validation

Performed data quality checks using Python:

* Removed duplicate NCT Numbers
* Handled missing values
* Standardized date formats
* Extracted country information from locations
* Standardized text fields

**Output:**

* clinical_trials_validated.csv
* validation_report.xlsx

---

### 3. SQL Data Analysis

Loaded cleaned data into MySQL and performed analysis on:

* Trial status distribution
* Clinical trial phases
* Sponsor activity
* Disease areas
* Geographic distribution
* Yearly trends

---

### 4. Power BI Dashboard

Developed interactive dashboards covering:

#### Executive Overview

* Total Trials
* Total Sponsors
* Total Countries
* Total Disease Areas

#### Trial Status Analysis

* Recruiting vs Completed vs Other Statuses

#### Phase Analysis

* Phase 1
* Phase 2
* Phase 3
* Phase 4

#### Sponsor Analysis

* Top Clinical Trial Sponsors

#### Disease Analysis

* Most Studied Conditions

#### Geographic Analysis

* Country-wise Trial Distribution

#### Trend Analysis

* Clinical Trials Started per Year

---

## Technologies Used

* Python
* Pandas
* NumPy
* MySQL
* Power BI
* Microsoft Excel
* GitHub

---

## Project Structure

Clinical-Trials-Research-Tracker/

├── Data/
│   ├── clinical_trials_raw.csv
│   ├── clinical_trials_validated.csv
│
├── Python/
│   ├── cleaning.py
│
├── SQL/
│   ├── clinical_trials_analysis.sql
│
├── Dashboard/
│   ├── TCRT_Dashboard.pbix
│   ├── screenshots/
│
├── Reports/
│   ├── validation_report.xlsx
│
└── README.md

---

## Key Insights

* Identified the most active clinical trial phases
* Analyzed sponsor participation across studies
* Evaluated disease areas receiving the highest research focus
* Mapped clinical trial activity by country
* Examined trends in clinical trial initiation over time

---

## Skills Demonstrated

* Data Collection
* Data Cleaning
* Data Validation
* Exploratory Data Analysis
* SQL Querying
* Dashboard Development
* Data Visualization

---

## Future Enhancements

* Automated data extraction using ClinicalTrials.gov API
* Real-time dashboard refresh
* Sponsor performance benchmarking
* Advanced trend forecasting

---

## Author

Tanmay Sawant

