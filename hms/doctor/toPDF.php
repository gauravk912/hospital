<?php 
    session_start();
    error_reporting(0);
    include('include/config.php');
    include('include/checklogin.php');
    check_login();
    if(!empty($_POST['submit'])){
        $Pname = $_POST['Pname'];
        $vid=$_GET['PatientID'];
        $PEmail = $_POST['PEmail'];
        $PatientContno = $_POST['PatientContno'];
        $PatientAdd = $_POST['PatientAdd'];
        $PatientGender  = $_POST['PatientGender'];
        $PatientAge  = $_POST['PatientAge'];
        $PatientMedhis  = $_POST['PatientMedhis'];
        $CreationDate  = $_POST['CreationDate'];
        $BloodPressure  = $_POST['BloodPressure'];
        $Weight  = $_POST['Weight'];
        $BloodSugar  = $_POST['BloodSugar'];
        $Temperature  = $_POST['Temperature'];
        $Prescription  = $_POST['Prescription'];
        $medicalPast  = $_POST['medicalPast'];
        $Prescription  = $_POST['Prescription'];
        
        $Prescription  = $_POST['Investigation'];


        require("fpdf/fpdf.php");
        $pdf = new FPDF();
        $pdf -> AddPage();
    }
?>
       <?php
                               $vid=$_GET['viewid'];
                               $ret=mysqli_query($con,"select * from tblpatient where ID='8'");
$cnt=1;
while ($row=mysqli_fetch_array($ret)) {
                               ?>

<table border="1" class="table table-bordered">
 <tr align="center">
<td colspan="4" style="font-size:20px;color:blue">
 Patient Details</td></tr>

    <tr>
    <th scope>Patient Name</th>
    <td><?php  echo $row['PatientName'];?></td>
    <th scope>Patient Email</th>
    <td><?php  echo $row['PatientEmail'];?></td>
  </tr>
  <tr>
    <th scope>Patient Mobile Number</th>
    <td><?php  echo $row['PatientContno'];?></td>
    <th>Patient Address</th>
    <td><?php  echo $row['PatientAdd'];?></td>
  </tr>
    <tr>
    <th>Patient Gender</th>
    <td><?php  echo $row['PatientGender'];?></td>
    <th>Patient Age</th>
    <td><?php  echo $row['PatientAge'];?></td>
  </tr>
  <tr>
    
    <th>Patient Medical History(if any)</th>
    <td><?php  echo $row['PatientMedhis'];?></td>
     <th>Patient Reg Date</th>
    <td><?php  echo $row['CreationDate'];?></td>
  </tr>
 
<?php }?>
</table>
<?php  



$ret=mysqli_query($con,"select * from tblmedicalhistory  where PatientID='$vid'");

 ?>
<table id="datatable" class="table table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
  <tr align="center">
   <th colspan="8" >Medical History</th> 
  </tr>
  <tr>
    <th>#</th>
<th>Blood Pressure</th>
<th>Weight</th>
<th>Blood Sugar</th>
<th>Body Temprature</th>
<th>Medical Prescription</th>
<th>LMP</th>
<th>Past Medical History</th>
<th>Investigation</th>
<th>Visit Date</th>


</tr>
<?php  
while ($row=mysqli_fetch_array($ret)) { 
  ?>
<tr>
  <td><?php echo $cnt;?></td>
  <td><?php  echo $row['BloodPressure'];?></td>
  <td><?php  echo $row['Weight'];?></td>
  <td><?php  echo $row['BloodSugar'];?></td> 
  <td><?php  echo $row['Temperature'];?></td>
  <td><?php  echo $row['MedicalPres'];?></td>
  <td><?php  echo $row['LMP'];?></td>
  <td><?php  echo $row['medicalPast'];?></td>
  <td><?php  echo $row['Investigation'];?></td>
  <td><?php  echo $row['CreationDate'];?></td> 
</tr>
<?php $cnt=$cnt+1;} ?>
</table>






<?php
        $file = time().'.pdf';
        $pdf->output($file,'D'); 
        ?>