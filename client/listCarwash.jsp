<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.mysql.jdbc.EscapeTokenizer"%>    
    <%@page import="java.util.List"%>
    <%@page import="beans.CarwashBean"%>
    <%@page import="beans.ServiceBean"%>
    
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listado de Carwash</title>
<link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"> 
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.7/angular.min.js">
</head>
<body>
<center><h2>Listado de Carwash afiliados al sistema</h2></center><br>

<%
// 	List<CarwashBean> listCW = (List<CarwashBean>)request.getAttribute("listCW");
List<CarwashBean> carwashList = (List<CarwashBean>)request.getAttribute("carwashList");

    
%>
<%-- <a href="<%=request.getContextPath()%>/Carwash?m=create" class='btn btn-lg btn-primary btn-sm' role='button'>Agregar</a> --%>
<table class="table table-striped">
	<thead>
	<tr>
		<th>Nombre</th>
		<th>Direccion</th>
		<th>Telefono</th>	
		<th>Email</th>
		<th>Servicios</th>
	</tr>
	</thead>
<%
		for (int i=0;i<carwashList.size();i++){			
			String nom = carwashList.get(i).getName();
			String dir = carwashList.get(i).getAddress();
			String tel = carwashList.get(i).getPhone();
			String mail = carwashList.get(i).getEmail();
			int id = carwashList.get(i).getId();		
			
%>			
		<tbody>
			<tr>
				<td><%=nom %></td>
				<td><%=dir %></td>
				<td><%=tel %></td>
				<td><%=mail %></td>				
				
				<td><a href="<%=request.getContextPath()%>/CarwashClient?m=services&idCw=<%=id%>">ver servicios</a></td>
				
			</tr>
			
 		</tbody>
<%			
		}
%>

</table>

</body>
</html>