<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background:#CDE392">
	<h2>Bienvenue sur l'interface de réservation.</h2>
	<form method="post" name="Reservation" action="Reserver">
		Name Chambre: <input type="text" name="chambre"> <br>
		<br>
		<br> <input type="submit" value="Reserver">
	</form>	
	<% if (session.getAttribute("result") != null) out.print(session.getAttribute("result")); %>
    	
    <br><br>
    <form method="post" name="return" action="index.html">
    			<input type="submit" name="return" value="page principale" />
    </form>
</body>
</html>