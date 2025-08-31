# 📷 PhotoGallery Project

PhotoGallery is a **web-based application** built with **HTML, Bootstrap, PHP, and MySQL**.  
It allows users to upload, view, and manage images through a simple and responsive gallery interface.  

---

## 🚀 Features

- 📌 **Responsive UI** – Built with **Bootstrap** for a clean and mobile-friendly design.  
- 🖼️ **Image Upload** – Upload images directly into the gallery.  
- 🗂️ **Database Integration** – MySQL stores image details (filename, path, and upload date).  
- ❌ **Delete Function** – Remove images from both the gallery and database.  
- 🔎 **Search/Filter (Optional)** – Find images by keywords or categories.  

---

## 🛠️ Tech Stack

- **Frontend:** HTML5, Bootstrap 5  
- **Backend:** PHP 8.x (XAMPP)  
- **Database:** MySQL (phpMyAdmin)  
- **Server:** Apache (via XAMPP)  

---


---

## ⚡ Installation & Setup

1. **Install XAMPP**  
   Download and install [XAMPP](https://www.apachefriends.org/). Start **Apache** and **MySQL** from the XAMPP Control Panel.  

2. **Clone or Copy the Project**  
   Place the project inside the XAMPP `htdocs` folder:  
C:/xampp/htdocs/photoGallery

php
Copy code

3. **Setup Database**  
- Open [http://localhost/phpmyadmin](http://localhost/phpmyadmin)  
- Create a new database:  
  ```sql
  CREATE DATABASE photogallery;
  ```
- Import `photogallery.sql` (located in `/db/`) into the new database.

4. **Configure Database Connection**  
Edit `config.php`:  
```php
<?php
$host = "localhost";
$user = "root";   // default username
$pass = "";       // default password (empty in XAMPP)
$db   = "photogallery";

$conn = mysqli_connect($host, $user, $pass, $db);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
?>
Run the Project
Open in your browser:

arduino
Copy code
http://localhost/photoGallery/

🎯 Purpose
This project was developed for our Technopreneurship / Web Development course.
It demonstrates the integration of:

A responsive frontend using HTML + Bootstrap

A backend powered by PHP

A MySQL database for storing and retrieving image information


📜 License
This project is for academic purposes only.
All rights reserved © 2025 PhotoGallery Team.
