<!DOCTYPE html>
<html lang="en">
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
</html>
<?php
include_once('../../includes/connectionDB.php');
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $form = $_POST['type'];
if ($form =='cofe'){
        $file_name =$_FILES['form_upload']['name'];
        $file_tmp =$_FILES['form_upload']['tmp_name'];
        $file_ext = strtolower(pathinfo($file_name , PATHINFO_EXTENSION));
        $file_new_name = strval(time() + rand(1 , 1000000000)).".$file_ext";
        $upload_path = '../upload/image_cofe/'.$file_new_name;
        move_uploaded_file($file_tmp , $upload_path);
        
        $name = $_POST['name'];
        $address = $_POST['address'];
        $phone_number = $_POST['phone_number'];
        $city_name = $_POST['city_name'];
        $new_path = str_replace('../' ,'',$upload_path);
        $query ="INSERT INTO cofe (name , address , phone_num , city_name ,image) VALUES ('$name','$address' ,'$phone_number','$city_name' ,'$new_path')";
        $result =mysqli_query($connection ,$query);
    if ($result){
            echo '<a href="../index.php"><div class = "row" ><div class = "col-12"><div class = "alert alert-success">DONE</div></div></div></a>';
        } else {
            echo '<div class = "row" ><div class = "col-12"><div class = "alert alert-danger">FIELDE</div></div></div>';        }
        }
else if($form =='city'){
        $file_name =$_FILES['image_upload']['name'];
        $file_tmp = $_FILES['image_upload']['tmp_name'];
        $file_ext = strtolower(pathinfo($file_name , PATHINFO_EXTENSION));
        $file_new_name = strval(time() + rand(1 , 1000000000)).".$file_ext";
        $upload_path = '../upload/image_city/'.$file_new_name;
        move_uploaded_file($file_tmp , $upload_path);
        
        $name = $_POST['name'];
        $new_path = str_replace('../' ,'',$upload_path);
        $query = "INSERT INTO cities(name_city ,image) VALUES ('$name' , '$new_path')";
        $result = mysqli_query($connection, $query);
        if ($result) {
            echo '<a href="../index.php"><div class = "row" ><div class = "col-12"><div class = "alert alert-success">DONE</div></div></div></a>';
        } else {
            echo '<div class = "row" ><div class = "col-12"><div class = "alert alert-danger">FIELDE</div></div></div>';        }
        }
        }
?>