<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contribuyentes</title>
</head>
<body>
	<h1>LISTA DE CONTRIBUYENTES</h1>
	<table>
		<tr>
			<td>Nombre</td>
			<td>Apellido</td>
			<td>NIT</td>
			<td>Importancia</td>
			<td>Fecha de Ingreso</td>
		</tr>
		<c:forEach items="${contribuyente}" var="contribuyente">
			<tr>
				<td>{contribuyente.s_nombre}</td>
				<td>{contribuyente.s_apellido}</td>
				<td>{contribuyente.s_nit}</td>
				<td>{contribuyente.c_importancia}</td>
				<td>{contribuyente.f_fecha_ingreso}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>