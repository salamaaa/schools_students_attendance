Data Analytics Project — Attendance Analysis
📌 Overview

This project demonstrates an end-to-end data analytics workflow using a real attendance dataset. The process includes loading data in Python, performing exploratory data analysis (EDA), cleaning and transforming the data, executing SQL queries using PostgreSQL, and building an interactive Power BI dashboard.
The goal is to uncover insights about student attendance patterns across schools and dates.

📁 Dataset

The dataset contains daily attendance details with the following fields:

School DBN — School identifier

Date — Attendance date

Enrolled — Total number of students

Absent — Number of students absent

Present — Number of students present

Released — Students released early

The dataset is loaded and explored in Python before being transferred into PostgreSQL.

🛠 Tools & Technologies Used

Python (Pandas, Matplotlib/Seaborn, NumPy)

Jupyter Notebook or VS Code

PostgreSQL + pgAdmin

SQL (Queries & Analysis)

Power BI (Dashboard & Visualization)

Excel/CSV for the original dataset

🔍 Steps Followed
1. Data Loading

Imported the dataset into Python using pandas.

Inspected rows, columns, and datatypes.

Identified missing values, duplicates, and anomalies.

2. Exploratory Data Analysis (EDA)

Summary statistics (mean, median, distribution).

Attendance trends over time.

School-level comparisons.

Correlation analysis between Present, Absent, and Enrolled.

Visualizations generated to understand patterns and outliers.

3. Data Cleaning

Handled missing values and incorrect data types.

Formatted dates and standardized text fields.

Created new calculated fields such as attendance_rate.

Improved dataset structure for SQL and dashboard use.

4. SQL Analysis (PostgreSQL)

Loaded the cleaned dataset into a PostgreSQL table.

Performed queries including:

Total attendance per school

Daily attendance rates

Absence trends

Ranking schools by attendance

Filtering days with high absences

5. Power BI Dashboard

An interactive dashboard was created to visualize key attendance indicators using:

Line charts for attendance trends

Bar charts for school-level attendance comparison

KPI cards for overall metrics

Heat maps for absence patterns

Filters/slicers for school and date selection

📈 Dashboard Highlights

The Power BI dashboard provides insights such as:

Which schools consistently have high/low attendance

Daily fluctuations in Present vs Absent counts

High-risk periods with unusual absence spikes

Attendance rate performance over time

Comparison across multiple schools

📌 Results / Key Insights (Examples)

Certain schools show consistent attendance rates above 90%.

Absence spikes correlate with specific dates or school events.

A strong trend between enrollment size and number of absences.

Helpful metrics for administrators to take data-driven actions.

▶️ How to Run the Project
1. Clone the repository
git clone <your-repo-link>
cd <project-folder>

2. Install dependencies
pip install -r requirements.txt

3. Run the Python notebook

Open the .ipynb file in Jupyter or VS Code and execute all cells.

4. Set up PostgreSQL

Create a database.

Import the cleaned dataset into a table.

Run the SQL scripts provided in the sql/ folder.

5. Open the Power BI file

Load the .pbix file.

Refresh the dataset connection if necessary.

📫 Contact

If you'd like to collaborate, discuss the project, or offer feedback, feel free to reach out!
