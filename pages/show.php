<meta charset="UTF-8">
<?php
//1. เชื่อมต่อ database: 
include('server.php');  //ไฟล์เชื่อมต่อกับ database ที่เราได้สร้างไว้ก่อนหน้าน้ี
//2. query ข้อมูลจากตาราง: 
$query = "SELECT * FROM login ORDER BY  username asc" or die("Error:"); 
//3. execute the query. 
$result = mysqli_query($db, $query); 
//4 . แสดงข้อมูลที่ query ออกมา: 
while($row = mysqli_fetch_array($result)) { 
  echo "<tr>";
  echo "<td>" .$row["ID"] .  "</td> ";
  echo  "<td>" .$row["username"] ."</td> ";  
  echo "<td>" .$row["name"] .  "</td> ";
  echo "<td>" .$row["level"] .  "</td> ";
}
//5. close connection
mysqli_close($db);
?>