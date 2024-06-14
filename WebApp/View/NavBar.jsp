<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap demo</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="CSS/Style.css">


</head>
<body>
	<div class="conatiner-fluid">
		<nav class="navbar navbar-expand-lg bg-body-tertiary">
			<div class="container-fluid">
				<a class="navbar-brand" href="#">SyncCommunity Media</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarNav"
					aria-controls="navbarNav" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="/getUserMain${data.id}">Home</a></li>
						<li class="nav-item"><a class="nav-link"
							href="/getuserprofile${data.id}">My Profile</a>
						<li class="nav-item"><a class="nav-link" href="#">About</a></li>

					</ul>

					`

					<h1 class="display-6">
						Welcome ${data.username}
						<hr>
					</h1>

					<!-- Example single danger button -->
					<div class="btn-group">
						<button type="button" class="btn btn-danger dropdown-toggle"
							data-bs-toggle="dropdown" aria-expanded="false">More</button>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="#">LogOut</a></li>
							<li><a class="dropdown-item" href="#">Another action</a></li>
							<li><a class="dropdown-item" href="#">Something else
									here</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="#">Separated link</a></li>
						</ul>
					</div>
				</div>
			</div>
	</div>
	</nav>
	</div>

</body>
</html>