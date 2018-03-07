
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<%
String idVt = null;
String idSv = null;
String userId = null;

if(request.getAttribute("idVt")!=null){
	idVt = (String)request.getAttribute("idVt");
}
if(request.getAttribute("idSv")!=null){
	idSv = (String)request.getAttribute("idSv");
}
if(request.getAttribute("userId")!=null){
	userId = (String)request.getAttribute("userId");
}

%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title></title>
<link href="Content/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.7/angular.min.js">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>

<script type="text/javascript">
$( document ).ready(function() {
	$("#registerForm").hide();
	$( "#btn_buscar" ).click(function() {
		$.ajax({
		  type: "GET",
		  url: "/Carrywash/Reservation",
		  data:{
			  m: "listSites",
			  idVt:$( "#idVt" ).val() ,
			  idSv: $( "#idSv" ).val() ,
			  userId:$( "#userId" ).val(),
			  day:$( "#day" ).val(),
			  hour:$( "#hour" ).val()
		  },
		  cache: false,
		  success: function(data){
			$("#sites").empty();
			console.log("Trae la data:",data);
			if(data.length>0){
				var sites = "<div class='table-responsive'><table class='table table-striped'>"; 
				sites = sites.concat("<thead><tr><th>Nombre del sitio</th><th>Seleccone un sitio</th><th></th></tr></thead><tbody>");
			    for (var i = 0; i < data.length; i++) { 
			    	sites = sites.concat("<tr><td>",data[i].name,"</td><td><input type='radio' name='site' value='"+data[i].id+"' required></td></tr>");
				}
			    sites= sites.concat("</tbody></table></div>");
			    $("#sites").append(sites);
			    $("#registerForm").show(); 
			}
		  }
		});
	});
	
	
	
	  
	
});
</script>


</head>
<body>

	<div class="container">
		<div class="page-header">
			<h2>
				<center>Reserva</center>
			</h2>
		</div>

		<div class="row">
			<div class="col-md-6 col-md-offset-3">

				<form action="Reservation" method="POST" role="form" name="forma">
					<input type="hidden" id= "idVt" name="idVt" value="<%=idVt%>"/>
					<input type="hidden" id= "idSv" name="idSv" value="<%=idSv%>"/>
					<input type="hidden" id= "userId" name="userId" value="<%=userId%>"/>
					<label>Buscar un Sitio Disponible por Fecha y Hora:</label>
					<div class="form-group">
						<input type="date" id="day" name="day" class="form-control" required> 
						<select class="form-control" id= "hour" name="hour" onchange="getval(this);"required>
							<option id="0" value="08:00:00" selected>08:00</option>
							<option id="1" value="09:00:00">09:00</option>
							<option id="2" value="10:00:00">10:00</option>
							<option id="3" value="11:00:00">11:00</option>
							<option id="4" value="12:00:00">12:00</option>
							<option id="5" value="13:00:00">13:00</option>
							<option id="6" value="14:00:00">14:00</option>
							<option id="7" value="15:00:00">15:00</option>
							<option id="8" value="16:00:00">16:00</option>
							<option id="9" value="17:00:00">17:00</option>
							<option id="10" value="18:00:00">18:00</option>
						</select>
					</div>
					<button id="btn_buscar" class="btn btn-lg btn-primary btn-block" type="button">Buscar</button>
					<a href="landingpage.jsp" class="button button-stripe">Inicio</a>
					<br>
					<div class="panel panel-primary">
						<div class="panel-heading">Elija un Sitio Disponible</div>
						<div class="panel-body">
							<div id="sites"></div>
						</div>
					</div>
					<div id="registerForm">
					<label>Ingrese su número de placa</label>  
						<input id="plate" type="text" class="form-control" placeholder="Placa" name="plate" ng-model="" required>
						<br>
						<button class="btn btn-lg btn-primary btn-block">Registrar</button>
					</div>
				</form>
			</div>
		</div>
	</div>









</body>
</html>