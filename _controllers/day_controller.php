<?php
 $nom =  $_SESSION['name'];
 $image = $_SESSION['photos'];
 $id = $_SESSION['id'];
$day= strval (day());
 $nbreUser = count(Admin::Alluser());
 $nbreDemande = count(Admin::Alldemande());
 $nbrerdv = count(Admin::Allrdv());
 $totaldemande = count(Admin::Alldmd());
 $nbretraite =  count(Admin::dmdtraite());
 $nbrenNntraite = count(Admin::dmdNontraite());
 $traiter = round ( ( 100 * $nbretraite )/$totaldemande );
 $Nntraite = round(( 100 * $nbrenNntraite /$totaldemande ));
 
  $allrdv = Admin::todayrdv($day);
  debug($allrdv);
  var_dump($allrdv);
  var_dump($day);
  exit();
 
?>