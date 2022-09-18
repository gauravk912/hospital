<?php
session_start();
error_reporting(0);
require_once('include/config.php');
include('include/checklogin.php');
check_login();

 header("Content-Type: application/xls");    
 header("Content-Disposition: attachment; filename=file.xls");  
 header("Pragma: no-cache"); 
 header("Expires: 0");


 
 $query = "
 SELECT tblpatient.PatientName,tblmedicalhistory.BloodPressure,
 tblmedicalhistory.Weight, tblmedicalhistory.BloodSugar,tblmedicalhistory.Temperature,
 tblmedicalhistory.MedicalPres,tblmedicalhistory.LMP,tblmedicalhistory.medicalPast,
 tblmedicalhistory.Investigation, tblmedicalhistory.CreationDate
 FROM tblmedicalhistory 
 INNER JOIN tblpatient 
 ON tblmedicalhistory.PatientID = tblpatient.ID where tblpatient.ID='8'
";
$result = mysqli_query($con, $query);
	
 $output = "";
	
 $output .="
  <table>
   <thead>
   <tr>
    <th>Patient Name</th>
    <th>Blood Pressure</th>
    <th>Weight</th>
    <th>Blood Sugar</th>
    <th>Body Temperature</th>
    <th>Medical Prescription</th>
    <th>LMP</th>
    <th>Past Medical History</th>
    <th>Investigation</th>
    <th>Visit Date</th>
 </tr>
   <tbody>
 ";
	
 // $query = $conn->query("SELECT * FROM `student`") or die(mysqli_errno());

 while($row = mysqli_fetch_array($result)){
  
 $output .= '
    <tr>
   <td>'.$row["PatientName"].'</td>
   <td>'.$row["BloodPressure"].'</td>
   <td>'.$row["Weight"].'</td>
   <td>'.$row["BloodSugar"].'</td>
   <td>'.$row["Temperature"].'</td>
   <td>'.$row["MedicalPres"].'</td>
   <td>'.$row["LMP"].'</td>
   <td>'.$row["medicalPast"].'</td>
   <td>'.$row["Investigation"].'</td>
   <td>'.$row["CreationDate"].'</td>
  </tr>
 ';
 }
	
 $output .="
   </tbody>
   
  </table>
 ";
	
 echo $output;
	
	
?>