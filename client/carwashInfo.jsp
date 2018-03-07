<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="beans.VehicleTypeBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Carwash Info</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<script type="text/javascript">
$( document ).ready(function() {
	
	$( "#selectVT" ).change(function() {
		$.ajax({
		  type: "GET",
		  url: "/carwash/CarwashInfo",
		  data:{
			  type:1,
			  vehicleTypeId: $( "#selectVT" ).val()
		  },
		  cache: false,
		  success: function(data){
			$("#services").empty();
// 			console.log("Trae la data:",data);
			if(data.length>0){
				var services = "<div class='table-responsive'><table class='table table-striped'>"; 
				services = services.concat("<thead><tr><th>Servicios</th><th>Precios</th><th>Descripcion</th><th></th></tr></thead><tbody>");
			    for (var i = 0; i < data.length; i++) { 
			    	services = services.concat("<tr><td>",data[i].name,"</td><td>",data[i].price,"</td><td>",data[i].description,"</td><td><a href='../../carwash/Reservation' class='btn btn-lg btn-primary btn-sm' role='button'>Seleccionar</button></td></tr>");
				}
			    services= services.concat("</tbody></table></div>");
			    $("#services").append(services);	
			}
		  }
		});
	});
	
	
	
	  
	
});
</script>
<body>
	<div class="container">
		<div class="page-header">
			<h2>
				<center>PRO Carwash</center>
			</h2>
		</div>
		<div class="panel panel-primary">
			<div class="panel-heading">Seleccione Tipo de vehiculo</div>
			<div class="panel-body">
    			<select id="selectVT" class="form-control" name="vehicleType" onchange="">
					<c:forEach items="${vehicleTypeList}" var="vehicleType">       
					<option value="<c:out value="${vehicleType.id}"/>">
						<c:out value="${vehicleType.name}"/>
  					</option>        
 					</c:forEach>
				</select>
			</div>
		</div>
		<div class="panel panel-primary">
			<div class="panel-heading">Información</div>
			<div class="panel-body">
				<div id="services"></div>
			</div>
			<!-- cierro panel-body -->
		</div>
		<!-- cierro panel-primary -->

		<div class="panel panel-primary">
			<div class="panel-heading">Nuestros Sitios</div>
			<div class="panel-body">

				<div class="row">
					<div class="col-md-3">
						<a href="#"><img id="d1" src="images/procarwash.jpg"
							class="img-responsive" alt="" style="width: 300px; height: 150px"></a>
					</div>

				</div>
				<!-- cierro row -->
			</div>
			<!-- cierro panel-body -->
		</div>
		<!-- cierro panel-primary -->

		<div class="panel panel-primary">
			<div class="panel-heading">Elija un Sitio Disponible</div>
			<div class="panel-body">

				<div class="row">
					<div class="col-md-3">
						<a href="reserva-cw.html"><img id="d1"
							src="images/cw-icon-dispo.jpg" class="" alt=""
							style="width: 80px; height: 80px"></a> <a
							href="reserva-cw.html"><img id="d2"
							src="images/cw-icon-dispo.jpg" class="" alt=""
							style="width: 80px; height: 80px"></a> <a
							href="reserva-cw.html"><img id="d2"
							src="images/cw-icon-dispo.jpg" class="" alt=""
							style="width: 80px; height: 80px"></a>
					</div>


					<div class="col-md-3">
						<a href="reserva-cw.html"><img id="d1"
							src="img/cw-icon-dispo.jpg" class="" alt=""
							style="width: 80px; height: 80px"></a> <a
							href="reserva-cw.html"><img id="d2"
							src="img/cw-icon-dispo.jpg" class="" alt=""
							style="width: 80px; height: 80px"></a> <a
							href="reserva-cw.html"><img id="d2"
							src="img/cw-icon-dispo.jpg" class="" alt=""
							style="width: 80px; height: 80px"></a>
					</div>


				</div>
				<!-- cierro row -->
			</div>
			<!-- cierro panel-body -->
		</div>
		<!-- cierro panel-primary -->

		<div class="col-md-8 col-md-offset-2"></div>
		<!-- cierro col-md-8 col-md-offset-2 -->
</body>
</html>