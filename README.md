# 📊 NGO Database Management & Analytics Project
This project focuses on managing and analyzing data for an NGO using **MySQL** for backend data management and **Tableau** for frontend data visualization. It enables a clear understanding of donors, donations, volunteers, students, staff, and financial transactions to improve operational efficiency and transparency.

## 🎯 Objective
- Design and manage NGO datasets using **MySQL**
- Build interactive dashboards in **Tableau** for insights and reporting

## 🧰 Tools & Technologies
| Tool      | Purpose                                  |
|-----------|------------------------------------------|
| MySQL     | Data storage, table relationships, queries |
| Tableau   | Data visualization and dashboard creation |


## 📂 File Descriptions
- `project.sql` – MySQL database dump file containing all NGO tables and data  
- `ngo dbms analysis.twbx` – Tableau workbook for dashboard visualizations  

## 🧮 MySQL Database Schema
The database includes the following tables:
- **`donor`** – Contains donor details like name, location, and contact  
- **`donation`** – Tracks donation records linked to donors  
- **`transactions`** – Financial transaction details for internal records  
- **`volunteer`** – General volunteer data for events and outreach  
- **`student_volunteer`** – Volunteers who are also students  
- **`students`** – Student beneficiaries receiving support from the NGO  
- **`staff`** – Information on staff involved in NGO operations

📌 Import the SQL dump (`project.sql`) using MySQL Workbench.

## 📊 Tableau Dashboard Insights
- **Top N Donors** – Bar chart with a dynamic slider to show top contributors  
- **% of Donations** – Pie chart displaying donor-wise donation percentages  
- **Fund Usage** – Bar chart comparing Credit vs Debit transaction amounts  
- **Student Volunteers** – Chart showing volunteer count per student  

🟢 Open the `.twbx` file using Tableau Desktop or Tableau Public.
✅ Use **Tableau Desktop** or **Tableau Public** to open the `.twbx` file.

## 👩‍💻 Team Members
- Surbhi   
- Krishna  
- Riddhi
- 
## 📄 License
This project is licensed under the [MIT License](LICENSE).

## 🔗 How to Use
1. **Clone** this repository or download the ZIP  
2. **Import** `project.sql` into MySQL  
3. **Open** `ngo dbms analysis.twbx` in Tableau  

✅ Perfect for academic submission, analytics portfolios, or NGO reporting systems!
