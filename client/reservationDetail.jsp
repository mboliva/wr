<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="beans.CarwashBean"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listado de Carwash</title>
<link href="Content/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.7/angular.min.js">
</head>
<body>
<%
	String day = (String)request.getAttribute("day");
	String hour = (String)request.getAttribute("hour");
	String cName = (String)request.getAttribute("cName");
	String site = (String)request.getAttribute("site");
	String sName = (String)request.getAttribute("sName");
	String vtName = (String)request.getAttribute("vtName");
%>
	<center>
		<h2>Detalle de la Reserva</h2>
	</center>
	<br>
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<div class="panel panel-primary">
					<div class="panel-heading">Gracias por Utilizar CarryWash!</div>
					<div class="panel-body">
						<table class='table table-striped table-responsive'>
							<thead>
								<tr>
								<th>Fecha</th>
								<th>Hora inicio - Hora fin</th>
								<th>CarWash</th>
								<th>Sitio</th>
								<th>Servicio</th>
								<th>Tipo Vehiculo</th>
								</tr>
							</thead>
								<tr>
								<td><%=day%></td>
								<td><%=hour%></td>
								<td><%=cName%></td>
								<td><%=site%></td>
								<td><%=sName%></td>
								<td><%=vtName%></td>
								</tr>
							<tbody>
							</tbody>
						</table>
						<a href="landingpage.jsp" class="button button-stripe">Inicio</a>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>