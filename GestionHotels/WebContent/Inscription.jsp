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
		<h2><label for="nom">Nom: </label></h2><input type="text" id="nom" name="nom"/><br>
		<h2><label for="prenom">Prénom: </label></h2><input type="text" id="prenom" name="prenom"/><br>
		<h2><label for="login">Login: </label></h2><input type="text" id="login" name="login"/><br>
		
		<font color="red"> <% if (session.getAttribute("correctPassword")!=null) out.print("Passwords do not match!");%> </font><br>
		
		<h2><label for="password">Password: </label></h2><input type="password" id="password" name="password"/> <br>
		<h2><label for="confpassword">Confirm password: </label></h2><input type="password" id="confpassword" name="confPassword"/><br>
		
		<font color="red"> <% if (session.getAttribute("errorMailFormat")!=null) out.print("Format error: must be like ***@***.** ");%> </font><br>
		<h2><label for="mail">Mail: </label></h2><input type="text" id="mail" name="mail"/><br>
		<br><br>
		<h2><label for="adresse">Adresse: </label></h2><input type="text" id="adresse" name="adresse"/> <br>
		
		<font color="red"> <% if (session.getAttribute("errorPhoneNumberFormat")!=null) out.print("Format error: only digits are accepted ");%> </font><br>
		<h2><label for="numtel">Numero de telephone: </label></h2><input type="text" id="numtel" name="tel"/><br>
		
		<font color="red"> <% if (session.getAttribute("errorDateFormat")!=null) out.print("Format error: must be like dd/mm/yyyy ");%> </font><br>
		<h2><label for="dateNaissance">Date de naissance: </label></h2><input type="text" id="dateNaissance" name="dateNais"/><br>
		<br><br>
		<input type="submit" value="S'inscrire">
	</form>
</body>
</html>