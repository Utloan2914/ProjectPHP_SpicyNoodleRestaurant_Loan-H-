<?php
session_start();

// Khởi tạo một mảng kết hợp trong session (nếu chưa tồn tại)
if (!isset($_SESSION['order'])) {
    $_SESSION['order'] = array();
    $_SESSION['order']['name'] = '';
    $_SESSION['order']['table'] = '';
}

// Thêm dữ liệu vào mảng kết hợp trong session

if(isset($_POST['name'])){
$_SESSION['order']['name'] = $_POST['name'];
echo $_SESSION['order']['name'];
}

?>
<script>
   window.location = "http://localhost:3333/tables"
</script>