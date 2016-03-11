<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Inscription.css">
<title>Insert title here</title>
</head>
<body>
	<h2>Inscription</h2>
	<form method="post" name="Inscription" action="Inscrire">
		<label for="nom">Nom: </label><input type="text" id="nom" name="nom"/><br>
		<label for="prenom">Prénom: </label><input type="text" id="prenom" name="prenom"/><br>
		<label for="login">Login: </label><input type="text" id="login" name="login"/><br>
		
		<font color="red"> <% if (session.getAttribute("correctPassword")!=null) out.print("Passwords do not match!");%> </font><br>
		
		<label for="password">Password: </label><input type="password" id="password" name="password"/> <br>
		<label for="confpassword">Confirm password: </label><input type="password" id="confpassword" name="confPassword"/><br>
		<label for="mail">Mail: </label><input type="text" id="mail" name="mail"/><br>
		<br><br>
		<label for="adresse">Adresse: </label><input type="text" id="adresse" name="adresse"/> <br>
		<label for="numtel">Numero de telephone: </label><input type="text" id="numtel" name="tel"/><br>
		<label for="dateNaissance">Date de naissance: </label><input type="text" id="dateNaissance" name="dateNais"/><br>
		<input type="hidden" name="required" value="name, nom, prenom, login, password, confpassword, mail, adresse, tel, dateNais">
		<br><br>
		<input type="submit" value="S'inscrire" onclick="required(document.Inscription.nom)"/>
	</form>
	<script src="non-empty.js"></script>
</body>
</html>