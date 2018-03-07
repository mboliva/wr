<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <title>Formulario</title>
  <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.0.2/css/bootstrap.min.css">    
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
</head>

<%

String idCw = null;
String m = null;
String idVt = null;
String idSv = null;

if(request.getAttribute("idCw")!=null){
	idCw = (String)request.getAttribute("idCw");
}
if(request.getAttribute("m")!=null){
	m = (String)request.getAttribute("m");
}
if(request.getAttribute("idVt")!=null){
	idVt = (String)request.getAttribute("idVt");
}
if(request.getAttribute("idSv")!=null){
	idSv = (String)request.getAttribute("idSv");
}
    
%>
<body ng-app>
<div class="container">
  
  
  <div class="col-md-8 col-md-offset-2" >
  <h1><center>Login Cliente</center></h1>
  <form action="ClientLogin" method="POST" role="form" name="forma">
  	<input type="hidden" name="idCw" value="<%=idCw%>"/>
  	<input type="hidden" name="m" value="<%=m%>"/>
  	<input type="hidden" name="idVt" value="<%=idVt%>"/>
  	<input type="hidden" name="idSv" value="<%=idSv%>"/>

    <div class="form-group" ng-class="">      
      <input id="inputNombre" type="text" class="form-control" placeholder="Ingrese su usuario" name="account" ng-model="" required>
    </div>
    <div class="form-group" ng-class="">      
      <input id="inputNombre" type="password" class="form-control" placeholder="Ingrese su password" name="password" ng-model="" required>    
    </div>
    <button class="btn btn-lg btn-primary btn-block" type="submit">Aceptar</button>
    <a href="<%=request.getContextPath()%>/RegClient" class="button">Registrese</a>
    <a href="landingpage.jsp" class="button button-stripe">Inicio</a>
  </form>
  </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.6/angular.min.js"></script>
<script src="formulario.js"></script>
</body>
</html>