<!DOCTYPE html>
<html lang="en">
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
</html>
<?php
include_once '../../includes/connectionDB.php'; //$connection
if($_SERVER['REQUEST_METHOD'] == 'POST'){
    $rating = $_POST['rating'];
    $city_name = $_POST['city_name'];
    $current_timeDate = $_POST['current_timeDate'];
    $query = "INSERT INTO rating (rate , current_timeDate , cofe_name) VALUES ($rating,'$current_timeDate','$city_name');";
        $result =mysqli_query($connection ,$query);
    if ($result){
            echo '<a href="../Cofes.php?name_city=Gaza"><div class = "row" ><div class = "col-12"><div class = "alert alert-success">DONE</div></div></div></a>';
        } else {
            echo '<a href="../Cofes.php?name_city=Gaza"><div class = "row" ><div class = "col-12"><div class = "alert alert-danger">FIELDE</div></div></div></a>';        
        }
}
?>
