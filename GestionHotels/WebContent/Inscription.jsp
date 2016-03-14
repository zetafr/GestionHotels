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
		<%int check = 1; %>
		<label for="nom">Nom: </label><input type="text" id="nom" name="nom"/><br>
		<% if (session.getAttribute("nom")!="")check = 0; %>
		<label for="prenom">Prénom: </label><input type="text" id="prenom" name="prenom"/><br>
		<% if (session.getAttribute("prenom")!="")check = 0; %>
		<label for="login">Login: </label><input type="text" id="login" name="login"/><br>
		<% if (session.getAttribute("login")!="")check = 0; %>
		<font color="red"> <% if (session.getAttribute("correctPassword")!=null) out.print("Passwords do not match!");%> </font><br>
		<label for="password">Password: </label><input type="password" id="password" name="password"/> <br>
		<% if (session.getAttribute("password")!="")check = 0; %>
		<label for="confpassword">Confirm password: </label><input type="password" id="confpassword" name="confPassword"/><br>
		<% if (session.getAttribute("confpassword")!="")check = 0; %>
		<label for="mail">Mail: </label><input type="text" id="mail" name="mail"/><br>
		<% if (session.getAttribute("mail")!="")check = 0; %>
		<br><br>
		<label for="adresse">Adresse: </label><input type="text" id="adresse" name="adresse"/> <br>
		<% if (session.getAttribute("adresse")!="")check = 0; %>
		<label for="numtel">Numero de telephone: </label><input type="text" id="numtel" name="tel"/><br>
		<% if (session.getAttribute("numtel")!="")check = 0; %>
		<label for="dateNaissance">Date de naissance: </label><input type="text" id="dateNaissance" name="dateNais"/><br>
		<% if (session.getAttribute("dateNaissance")!="")check = 0; %>
		<font color="red"> <% if (check==0) out.print("Certains champs sont vides ou incorrects");%> </font><br>
		<br><br>
		<input type="submit" name="submit" value="Submit"/>
	</form>
</body>
</html>