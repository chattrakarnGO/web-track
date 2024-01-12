<!-- https://www.youtube.com/watch?v=wOH9pQPXPfY -->
<?php
	session_start();
	session_destroy();
	header("location:login.php");
?>