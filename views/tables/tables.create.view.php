<?php
include_once(__DIR__ . '/../partials/header.php');
include_once(__DIR__ . '/../../database/database.php');

?>
<link rel="stylesheet" href="../css/tables.create.view.css">

<div class="container">
  <h1>Choose Tables</h1>

  <?php
  

  $table = selectAllTables("tables");
  if (is_array($table) && !empty($table)) {
    echo '<div class="button-container" id="buttonContainer">';

    foreach ($table as $key) {
      echo '<a class="button" href="./../../model/tables.model.php?id=' . $key['table_id'] . '" onclick="showAlert(\'' . $key['table_id'] . '\')">' . $key['table_id'] . '</a>';
    }

    echo '</div>';
  } else {
    echo 'No data available.';
  }
  ?>
</div>
<script>
  function showAlert(tableNumber) {
    alert("Table " + tableNumber + " selected!");
  }
</script>
</div>




<?php
include_once(__DIR__ . '/../partials/footer.php');

?>