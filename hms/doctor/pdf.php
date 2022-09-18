<?php 
    session_start();
    error_reporting(0);
    include('include/config.php');
    include('include/checklogin.php');
    check_login();

    $res= mysqli_query($con,"SELECT * FROM tblmedicalhistory");
    if(mysqli_num_rows($res)>0)
    {
        $html.='<table>';
        $html.='<tr><td>#</td><td>Blood Pressure</td><td>Weight</td>';
        while($row=mysqli_fetch__assoc($res))
        {
            $html.='<tr><td>'.$row['']
        }
    }else
    {

    }
?>