<?php
include "../database/database.php";

session_start();

if (isset($_GET['id'])) {
  $_SESSION['order']['table'] = $_GET['id'];
  createUser($_SESSION['order'],"users");
}

?>
<script>
    window.location = "http://localhost:3333/tables"
</script>