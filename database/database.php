<?php

/**
 * Connect to database
 */
function db()
{
  $host     = 'localhost'; // Because MySQL is running on the same computer as the web server
  $database = 'projects'; // Name of the database you use (you need first to CREATE DATABASE in MySQL)
  $user     = 'root'; // Default username to connect to MySQL is root
  $password = ''; // Default password to connect to MySQL is empty

  // TO DO: CREATE CONNECTION TO DATABASE
  // Read file: https://www.w3schools.com/php/php_mysql_connect.asp


  try {
    $db =  new PDO("mysql:host=$host;dbname=$database", $user, $password);
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    return $db;
  } catch (PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
  }
}

/**
 * Create new student record
 */
function createUser($value, $table)
{
  $db = db();

  $stmt = $db->prepare("INSERT INTO $table (name, table_id) VALUES (:name, :table_id)");

  $stmt->bindParam(':name', $value['name']);
  $stmt->bindParam(':table_id', $value['table']);
  $stmt->execute();
}

/**
 * Get all data from table student
 */
function selectAllTables($table)
{
  $db = db();
  $stmt = $db->query("SELECT * FROM $table");
  return $stmt->fetchAll();
}

/**
 * Get only one on record by id 
 */
function selectOnestudent($id)
{
  $db = db();

  $stmt = $db->prepare("SELECT * FROM student WHERE id = :id");
  $stmt->bindParam(':id', $id);
  $stmt->execute();

  return $stmt->fetch(PDO::FETCH_ASSOC);
}

/**
 * Delete student by id
 */
function deleteStudent($id)
{
  $db = db();

  $stmt = $db->prepare("DELETE FROM student WHERE id = :id");
  $stmt->bindParam(':id', $id);
  $stmt->execute();
}


/**
 * Update students
 * 
 */
function updateStudent($value)
{
  $db = db();

  $stmt = $db->prepare("UPDATE student SET name = :name, age = :age, email = :email, profile = :profile WHERE id = :id");

  $stmt->bindParam(':id', $value['id']);
  $stmt->bindParam(':name', $value['name']);
  $stmt->bindParam(':age', $value['age']);
  $stmt->bindParam(':email', $value['email']);
  $stmt->bindParam(':profile', $value['profile']);

  $stmt->execute();
}
