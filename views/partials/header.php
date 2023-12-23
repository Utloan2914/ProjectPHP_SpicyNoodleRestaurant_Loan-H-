<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Pepsi Website</title>
  <link rel="stylesheet" href="../partials/header.css">
  <link rel="stylesheet" href="../partials/footer.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-...." crossorigin="anonymous" />
</head>
   <body>
      <div class="containerHeader">
        <div><img class="logoHeader" src="../../views/partials/image/logo.png" alt="Pepsi Logo"></div>
        <div>
          <nav class="groupAHeader">
            <a class="aOfHeader" href="">Home</a>
            <a class="aOfHeader"href="">Menu</a>
            <a class="aOfHeader"href="">Search</a>
            <a class="aOfHeader" href="">Cart</a>
            <a class="aOfHeader" href="">Admin</a>
            <a class="aOfHeader" onclick="registration()" href="#">User</a>
          </nav>
        </div>
      </div>
      <script>
          function registration(){
            window.location="http://localhost:3333/registration";
          }
      </script>
   </body>



