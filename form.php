<?php
$BDD = new PDO('mysql:hostname=localhost;dbname=bdd_portfolio;charset=utf8','root','root');

$request_prepare = $BDD->prepare("

	INSERT INTO users (id,email_user,last_name,first_name,phone_number,text_area)
	VALUES (' ',?,?,?,?,?)

	");

$request_exec = $request_prepare->execute(array($_POST['email_user'],$_POST['last_name'],$_POST['first_name'],$_POST['phone_number'],$_POST['text_area']));


$request_prepare->closeCursor();
header('Location: index.phtml');
?>