<?php
$q=$_GET['animalid'];
$connection = mysqli_connect('localhost:8889', 'root', 'root', 'wildlife_livesearch');
$sql="SELECT * FROM tbl_animals WHERE animal_id =".$q;
$result = mysqli_query($connection, $sql);
$row = mysqli_fetch_array($result);

// print "<img src='images/".$row['animal_photo']."'><div id='data'><h3>".$row['animal_name_eng']." <br /> ".$row['animal_name_spa']."</h3>".$row['animal_weight']." <br /> ".$row['animal_description']."</div>";
// print "<a href=\"#\" id=\"".$row['animal_id']."\">".'<img src="images/'.$row['animal_thumbs'].'">'.$row['animal_name_eng']."</a>";

?>


<img src='images/<?php echo $row['animal_photo']?>'>
<div id='data'>
<h3><?php echo $row['animal_name_eng']?></h3>
<h3><?php echo $row['animal_name_spa']?></h3>
<p><?php echo $row['animal_weight']?></p>
<p><?php echo $row['animal_description']?></p></div>
