<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Réservation</title>
</head>
<body style="background:#CDE392">
	<h2>La reservation demandée est disponible </h2>

	<%String typeChambre = request.getParameter("typeChambre");
	  int nbPersonnes = Integer.parseInt(request.getParameter("nbPersonnes"));
	  String dateDebut = request.getParameter("dateDebut");
	  String dateFin = request.getParameter("dateFin"); %>
	
	<form method="post" name="Reservation" action="Reserver">
	    <h2>Vous avez choisi : </h2>
	    Type de Chambre : <% out.print(typeChambre);%>
		<br><br>
		nombre de personnes :  <% out.print(nbPersonnes);%>
		<br><br>
		Date du début du séjour :  <% out.print(dateDebut);%>
		<br><br> 
		Date de fin du séjour :  <% out.print(dateFin);%>
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
    <form method="post" name="return" action="index.jsp">
    			<input type="submit" name="return" value="page principale" />
    </form>
</body>
</html>