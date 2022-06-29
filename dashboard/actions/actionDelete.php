<!DOCTYPE html>
<html lang="en">
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
</html>
<?php
include_once('../../includes/connectionDB.php');
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $tpye = $_POST['type'];
    if($tpye == 'cofe'){
        $id = $_POST['id'];
        if (!empty($id)){
        $query = "DELETE FROM cofe WHERE id = $id";
        $result = mysqli_query($connection , $query);
        if ($result) {
            echo '<a href="../index.php"><div class = "row" ><div class = "col-12"><div class = "alert alert-success">DONE</div></div></div></a>';
        } else {
            echo '<a href="../index.php"><div class = "row" ><div class = "col-12"><div class = "alert alert-danger">FIELDE</div></div></div></a>';        }
        }
    }else if($tpye == 'city'){
        $city_name = $_POST['city_name'];
        if (!empty($city_name)){
        $query = "DELETE FROM cities WHERE name_city = '$city_name'";
        $result = mysqli_query($connection , $query);
        if ($result){
            echo '<a href="../index.php"><div class = "row" ><div class = "col-12"><div class = "alert alert-success">DONE</div></div></div></a>';
        } else {
            echo '<a href="../index.php"><div class = "row" ><div class = "col-12"><div class = "alert alert-danger">FIELDE</div></div></div></a>';        
        }
        }
    }
}

?>