<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no">
<meta charset="utf-8">
<title>Encontrar Carwash</title>

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>

<script>
	function initMap() {
		// creamos el mapa
		var map = new google.maps.Map(document.getElementById('map'), {
			center : {
				lat : -12.126057,
				lng : -77.022954
			},
			zoom : 6
		});
		var infoWindow = new google.maps.InfoWindow({
			map : map
		});

		// Try HTML5 geolocation.
		if (navigator.geolocation) {
			navigator.geolocation.getCurrentPosition(function(position) {
				var pos = {
					lat : position.coords.latitude,
					lng : position.coords.longitude
				};

				infoWindow.setPosition(pos);
				infoWindow.setContent('Location found.'
						+ '<a href="<%=request.getContextPath()%>/CarwashInfo">ver carwash</a>');
				map.setCenter(pos);
			}, function() {
				handleLocationError(true, infoWindow, map.getCenter());
			});
		} else {
			// Browser doesn't support Geolocation
			handleLocationError(false, infoWindow, map.getCenter());

		}
	}

	function handleLocationError(browserHasGeolocation, infoWindow, pos) {
		infoWindow.setPosition(pos);
		infoWindow
				.setContent(browserHasGeolocation ? 'Error: The Geolocation service failed.'
						: 'Error: Your browser doesn\'t support geolocation.');
	}
</script>
<script
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDel46NfH-3RwBg-BgMHcF4BL5Q6NhVXz8&signed_in=true&callback=initMap"
	async defer>
	
</script>
<body>
	<div class="container">
		<div class="form-group"></div>
		<div class="col-md-8 col-md-offset-2">
			<div class="panel-group">
				<div class="panel panel-primary">

					<div class="panel-body">
						<div class="form-signin">
							<center>
								<div id="map" class="img-responsive"
									style="width: 700px; height: 500px;"></div>
							</center>
							<br>
							<button onclick="initMap();"
								class="btn btn-lg btn-primary btn-block">Buscar Carwash</button>
						</div>


					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>