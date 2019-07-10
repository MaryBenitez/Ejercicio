<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inicio</title>
</head>
<body>
	<h1>BIENVENIDO</h1>
	
	<label>Nombre</label>
	<input type="text" name="s_nombre"/>
	<label>Apellido</label>
	<input type="text" name="s_apellido"/>
	<label>NIT</label>
	<input type="text" name="s_nit"/>
	
	<form action="${pageContext.request.contextPath }">
		<input type="submit" value="GUARDAR" name="save"/>
	</form>
	
	<form action="${pageContext.request.contextPath}/BuscarC" method="post">
		<input type="submit" value="VER CONTRIBUYENTES" name="v_contribuyentes"/>
	</form>
	
	<table></table>
</body>
</html>