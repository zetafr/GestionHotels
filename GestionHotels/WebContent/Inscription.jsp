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
		<h4><label for="nom">Nom: </label></h4><input type="text" id="nom" name="nom"/><br>
		<h4><label for="prenom">Prénom: </label></h4><input type="text" id="prenom" name="prenom"/><br>
		<h4><label for="login">Login: </label></h4><input type="text" id="login" name="login"/><br>
		
		<font color="red"> 
			<% if (session.getAttribute("correctPassword").equals(false)){ 
					out.print("Passwords do not match!");
			}%> </font><br>
		<h4><label for="password">Password: </label></h4><input type="password" id="password" name="password"/> <br>
		<h4><label for="confpassword">Confirm password: </label></h4><input type="password" id="confpassword" name="confPassword"/><br>
		
		<font color="red"> 
			<% if (session.getAttribute("errorMailFormat").equals("wrong format")==true){
					out.print("Format error: must be like ***@***.** ");	
			}%> </font><br>
		<h4><label for="mail">Mail: </label></h4><input type="text" id="mail" name="mail"/><br>
		<br><br>
		<h4><label for="adresse">Adresse: </label></h4><input type="text" id="adresse" name="adresse"/> <br>
		
		<h4><label for="numtel">Numero de telephone: </label></h4><input type="text" id="numtel" name="tel"/><br>
		
		<font color="red"> 
			<% if (session.getAttribute("errorDateFormat").equals("wrong format")==true) {
					out.print("Format error: must be like dd/mm/yyyy ");
			}%> </font><br>
		<h4><label for="dateNaissance">Date de naissance: </label></h4><input type="text" id="dateNaissance" name="dateNais"/><br>
		<font color="red"> <%if(session.getAttribute("allFieldsAreFilled").equals(false)) out.print("Attention: Tous les champs d'information ne sont pas remplis"); %>
		</font>
		<br><br>
		<input type="submit" value="S'inscrire">
	</form>
</body>
</html>