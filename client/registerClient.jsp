<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <title>Formulario</title>
  <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.0.2/css/bootstrap.min.css">    
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body ng-app>
<div class="container">
  <h1><center>Registrar Cliente</center></h1><br>
  
  <div class="col-md-8 col-md-offset-2" >
  <form action="RegClient" method="POST" role="form" name="forma">      
    <!--  que metodo voy a entrar --> 
    <input type="hidden" name="m" value="create"/>
    <div class="form-group" ng-class="">      
    <label>Ingrese su nombre y apellido</label>    
      <input id="inputNombre" type="text" class="form-control" placeholder="Ingrese su nombre y apellido" name="nombre" ng-model="" required>
    </div>
    <div class="form-group" ng-class="">     
    <label>Ingrese un email</label>     
      <input id="inputEmail" type="email" class="form-control" placeholder="Ingrese un email" name="email" 
      ng-model="" required>      
    </div>
    <div class="form-group" ng-class="">
    <label>Ingrese un tel�fono</label>      
      <input id="inputEmail" type="text" class="form-control" placeholder="Ingrese un telefono" name="telefono" 
      ng-model="" required>      
    </div>    
    <div class="form-group" ng-class="">
    <label>Ingrese un usuario</label>      
      <input id="inputNombre" type="text" class="form-control" placeholder="Ingrese un usuario" name="usuario" 
      ng-model="" required>
    </div>
    <div class="form-group" ng-class="">
    <label>Ingrese un password</label>      
      <input id="inputNombre" type="password" class="form-control" placeholder="Ingrese un password" name="password" ng-model="" required>
    </div>  
    
         
    
    <button class="btn btn-lg btn-primary btn-block">Crear cuenta</button>
  </form>
  
  <center>Al hacer clic en "Crear cuenta", aceptas los T�rminos y las Condiciones de Carrywash y la Pol�tica de privacidad.</center>
  
  </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.6/angular.min.js"></script>
<script src="formulario.js"></script>
</body>
</html>