<?php
if (!empty($_POST)) 
			{
				if ((!empty($_POST['login_Connect'])) && (!empty($_POST['password_Connect']))) 
				{
					$bdd = new PDO('mysql:hostname=localhost;dbname=bdd_portfolio;charset=utf8;','root','root',
						[
					    	PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
					        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
					    ]);
					
					$query_admin = $bdd->prepare("

						SELECT login,mdp
						FROM admin
						WHERE login = ? AND mdp = ?

						");
					$query_admin -> execute(array($_POST['login_Connect'],$_POST['password_Connect']));
					$request_admin = $query_admin->fetch(PDO::FETCH_ASSOC);
					
					if (($_POST['login_Connect'] == $request_admin['login'] ) && ($_POST['password_Connect'] == $request_admin['mdp']))
						{
							
							session_start();
							$_SESSION['connected']=true;
							header("Location: admin.phtml");
						}
						else
							{
								echo "mauvais id";
							}
				}
					else
					{
						echo "Veuillez renseigner vos identifiant pour vous connecter !";
					}
			}
				else
				{
					echo "formulaire de connexion vide !";
				}
?>