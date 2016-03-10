<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Votre réservation</title>
</head>
<body>
	<h2>Détails de votre réservation</h2>	
	<%String typeChambre = request.getParameter("typeChambre");
	  int nbPersonnes = Integer.parseInt(request.getParameter("nbPersonnes"));
	  String dateDebut = request.getParameter("dateDebut");
	  String dateFin = request.getParameter("dateFin");
	  String nom = request.getParameter("nomClient");
	  String prenom = request.getParameter("prenomClient");
	  String adresse = request.getParameter("adresseClient");
	  String tel = request.getParameter("telClient");
	 %>  
	 
	 
	 Votre type de chambre : <%=typeChambre %>
	 <br><br>
	 Nombre de personnes : <%=nbPersonnes %>
	 <br><br>
	 Séjour : Du <%=dateDebut %> jusqu'à <%=dateFin %>
	 <br><br>
	 Au nom de <%=prenom %> <%=nom %> de <%=adresse %> contactable au <%=tel %>
	 <br><br>
 	<form method="post" name="return" action="index.jsp">
    			<input type="submit" name="return" value="page principale" />
    </form>
</body>
</html>