<?php

session_start();
error_reporting(0);
include('include/config.php');
include('include/checklogin.php');
check_login();

require_once 'dompdf/autoload.inc.php';

use Dompdf\Dompdf;
$document = new Dompdf();



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

$output = "
 <style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
</style>
<table>

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
";

while($row = mysqli_fetch_array($result))
{
  
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

$output .= '</table>';

$document->loadHtml($output);
$document->loadHtml($output);
$document->setPaper('A4','landscape');
$document->render();
$document->stream("Webslesson", array("Attachment"=>0));

?>



