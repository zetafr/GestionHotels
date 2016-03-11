<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Réservation</title>
</head>
<body style="background:#CDE392">
	<h2>Sélectionnez le type de séjour que vous souhaitez</h2>
	<form method="post" name="Reservation" action="Reserver">
		Type de Chambre: <br><br>
		Business (2 pers. max) <input type="radio" name="typeChambre" value="Business" checked>
		<br>
		Famille (6 pers. max) <input type="radio" name="typeChambre" value="Famille">
		<br>
		Noce (2 pers. max) <input type="radio" name="typeChambre" value="Noce">
		<br>
		Standard (4 pers. max) <input type="radio" name="typeChambre" value="Standard">
		<br><br>
		nombre de personnes (1 à 6) : <input type="number" name="nbPersonnes"/>
		<br><br>
		Date du début du séjour : <input type="date" name="dateDebut"/>
		<br><br> 
		Date de fin du séjour : <input type="date" name="dateFin"/>
		<br><br>
	<h2>Rentrez vos informations personnelles</h2>	
		Nom : <input type="text" name="nomClient">
		<br><br>
		Prénom : <input type="text" name="prenomClient">
		<br><br>
		Adresse : <input type="text" name="adrClient">
		<br><br>
		Téléphone : <input type="text" name="telClient">
		<br><br>
		<input type="submit" value="Reserver">
	</form>	
	<% if (session.getAttribute("result") != null) out.print(session.getAttribute("result")); %>
    <br><br>
    <form method="post" name="return" action="index.html">
    			<input type="submit" name="return" value="page principale" />
    </form>
</body>
</html>