<?php 
// Database  Details  
$hostname = "localhost";
$username = "u808611703_rkprintportal";
$password = "Puspa123#";
$database ="u808611703_rkprintportal";

$ahk_conn = mysqli_connect($hostname,$username,$password,$database);

if(!$ahk_conn){
    include('links.php');
   ?>
   <script>
    $(function(){
        Swal.fire(
            'Opps',
            'Dadatabase Connection Failed',
            'error'
        )
    })
   </script>
   <?php
}

?>