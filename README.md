# 📌 Employee Management System (EMS)

A simple **Employee Management System (EMS)** built using **JDBC and J2EE** in **Eclipse IDE**.  
This project demonstrates basic CRUD (Create, Read, Update, Delete) operations on an employee database.

---

## 🚀 Features
- ➕ Add new employee details  
- 🔍 Search employee by ID  
- ❌ Delete employee records  
- 📋 View all employees  

---

## 🛠️ Tech Stack
- **Java (J2EE)**
- **JDBC**
- **MySQL / Oracle Database**
- **Servlets & JSP (if applicable)**
- **Eclipse IDE**
- **Apache Tomcat Server**

---

## 🗂️ Project Structure
EMS/
│── src/ # Java source files (DAO, Servlets, Models)
│── WebContent/ # JSP / HTML files
│── lib/ # JDBC Driver (MySQL Connector)
│── README.md


---

## ⚙️ How It Works
- JDBC connects the Java application to the database  
- SQL queries perform operations on the **Employee table**  
- Servlets handle business logic and interact with JSP/HTML frontend  

---

## ▶️ Setup & Run
1. Clone the repository  
   ```bash
   git clone https://github.com/your-username/ems-project.git
   Open in Eclipse IDE
   
---

## 🌐 Server Establishment
- Configure Apache Tomcat Server
- Add JDBC driver (MySQL Connector .jar)
- Update database credentials in code
- Run the project on server

---

## 🛢️ SQL
- CREATE TABLE EMPLOYEE (
    - EMPNO INT PRIMARY KEY,
    - ENAME VARCHAR(50),
    - JOB VARCHAR(50),
    - SAL DECIMAL(10,2)
);
