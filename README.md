# Java-Mysql-Simple-Login-Servlet

# JDBC Login & Register Servlet 🚀

This is a **simple web application** that implements **user authentication** (Login & Register) using **JDBC, MySQL, and Servlets**.

---

## 🛠️ Setup Instructions

### 1️⃣ Prerequisites
Before running this project, ensure you have:
- **Java JDK 8+**
- **Apache Tomcat 9+**
- **MySQL Database**
- **Maven** (for dependency management)
- **Eclipse/IntelliJ** (Optional, for development)

---

### 2️⃣ Clone the Repository
First, clone the repository to your local machine:
```sh
git clone https://github.com/tarakantaacharya/JDBC_Login_Register_Servlet.git
cd JDBC_Login_Register_Servlet
```


### 3️⃣ Configure the MySQL Database

#### **1. Create a new database**
Log into MySQL and run:
```sql
CREATE DATABASE user_db;
```

#### **2. Create the `users` table**
```sql
USE user_db;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);
```

#### **3. Update Database Credentials**
Modify **`DBConnection.java`** with your MySQL credentials:
```java
private static final String URL = "jdbc:mysql://localhost:3306/user_db";
private static final String USER = "root";  // Change this if needed
private static final String PASSWORD = "your_password"; // Enter your password
```

---

### 4️⃣ Build the Project with Maven
Navigate to the project directory and build using Maven:
```sh
mvn clean install
```
This will generate a `.war` file in the `target` folder.

---

### 5️⃣ Deploy to Apache Tomcat
#### **1. Copy the `.war` file to Tomcat**
Move the generated WAR file to Tomcat's `webapps` directory:
```sh
cp target/JDBC_Login_Register_Servlet.war /path/to/tomcat/webapps/
```

#### **2. Start Tomcat**
Navigate to your Tomcat `bin` directory and run:
```sh
startup.bat   # Windows
./startup.sh  # macOS/Linux
```

---

### 6️⃣ Access the Application
Once Tomcat is running, open your browser and visit:
```
http://localhost:8080/JDBC_Login_Register_Servlet/
```

---

## 📜 Folder Structure
```
📦 JDBC_Login_Register_Servlet
 ┣ 📂 src/main/java
 ┃ ┣ 📜 DBConnection.java
 ┃ ┣ 📜 RegisterServlet.java
 ┃ ┣ 📜 LoginServlet.java
 ┣ 📂 webapp
 ┃ ┣ 📜 index.jsp
 ┃ ┣ 📜 login.jsp
 ┃ ┣ 📜 register.jsp
 ┣ 📜 pom.xml (Maven)
 ┣ 📜 README.md
```

---

## 🎯 Technologies Used
- **Java Servlet & JSP**
- **JDBC (Java Database Connectivity)**
- **MySQL**
- **Apache Tomcat**
- **Maven**
- **HTML, CSS, Bootstrap**

---

## 🎉 Contributing
Feel free to fork this repository and submit pull requests. Contributions are welcome! 😊

---

## 📩 Contact
For any queries, reach out:  
📧 Email: tarakantaacharya@example.com  
🔗 GitHub: [tarakantaacharya](https://github.com/tarakantaacharya)
```

