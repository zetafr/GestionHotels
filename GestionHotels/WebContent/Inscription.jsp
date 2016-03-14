<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Inscription.css">
<title>Inscription</title>
</head>
<body>
	<script src="codeTouche.js"></script>
	<script src="scanTouche.js"></script>
	<script src="scanChamp.js"></script>
	<h2>Inscription</h2>
	<form method="post" name="Inscription" action="Inscrire">
		<label for="nom">Nom: </label>
		<input type="text" id="nom" name="nom" 
			onKeyPress="return scanTouche(event, /[A-Za-z\séèçàùâêîôûäëïöü-]/)"
			onChange="scanChamp(this, /^[A-Za-z\séèçàùâêîôûäëïöü-]*$/)"
		/><br>
		<label for="prenom">Prénom: </label>
		<input type="text" id="prenom" name="prenom" 
			onKeyPress="return scanTouche(event, /[A-Za-z\séèçàùâêîôûäëïöü-]/)" 
			onChange="scanChamp(this, /^[A-Za-z\séèçàùâêîôûäëïöü-]*$/)"
		/><br>
		<label for="login">Login : </label>
		<input type="text" id="login" name="login"/><br>
		<font color="red"> <% if (session.getAttribute("correctPassword")!=null) out.print("Passwords do not match!");%> </font><br>
		<label for="password">Password: </label>
		<input type="password" id="password" name="password"/> <br>
		<label for="confpassword">Confirm password: </label>
		<input type="password" id="confpassword" name="confPassword"/><br>
		<label for="mail">Mail: </label>
		<input type="text" id="mail" name="mail" 
			onChange="scanChamp(this, /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/)"
		/><br>
		<br><br>
		<label for="adresse">Adresse: </label>
		<input type="text" id="adresse" name="adresse" 
			onKeyPress="return scanTouche(event, /[\w\séèçàùâêîôûäëïöü-]/)"
		/> <br>
		<label for="numtel">Numero de telephone: </label>
		<input type="text" id="numtel" name="tel" 
			onKeyPress="return scanTouche(event, /[0-9]/)" 
			onChange="scanChamp(this, /^[0-9]{10}$/)"
		/><br>
		<label for="dateNaissance">Date de naissance (JJ-MM-AAAA): </label>
		<input type="text" id="dateNaissance" name="dateNais"
			onKeyPress="return scanTouche(event, /[0-9\-]/)"
			onChange="scanChamp(this, /^(0?\d|[12]\d|3[01])-(0?\d|1[012])-((?:19|20)\d{2})$/)"
		/><br>
		<br><br>
		<input type="submit" name="submit" value="Submit"/>
	</form>
</body>
</html>