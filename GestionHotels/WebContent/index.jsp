<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Accueil</title>
</head>
<body style="background:#CDE392">
	<h1>Bienvenue sur notre site de réservation d'hotel !</h1>
	<br>
	<h2>Connectez-vous : </h2>
	<form method="post" name="Connexion" action="Connecter">
		Login : <input type="text" name="login">
		<br>
		Password : <input type="password" name="password">
		<br><br>
		<input type="submit" value="Se connecter">
	</form>
	<br><br>
	<h2>Pas encore inscrit ?</h2>
	<form method="post" name="Inscription" action="Inscription.jsp">
		<input type="submit" value="S'inscrire">
	</form>
    <br><br>
    
  	Consulter les chambres disponibles 
	<form method="post" name="Chambres" action="Consulter.jsp">
		<input type="submit" value="Consulter Chambres">
	</form>
	
    <br><br>
    <form method="post" name="return" action="index.html">
    			<input type="submit" name="return" value="Page principale" />
    </form>
    
    <% if (session.getAttribute("result") != null) out.print(session.getAttribute("result")); %>
    <br><br>
</body>
</html>