<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Home</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
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
							aria-current="page" href="#">Home</a></li>
						<li class="nav-item"><a class="nav-link "
							href="/getuserprofile${data.id}">My Profile</a>
						<li class="nav-item"><a class="nav-link"
							href="ViewAllDetails${data.id}">Details</a></li>

					</ul>
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
		</nav>


	</div>

	<div class="container">
		<div class="row">

			<c:forEach var="data1" items="${SeletedUser}">

				<c:forEach var="posts1" items="${SeletedPost}">
					<div class="col-md" style="margin-top: 45px;">
						<div class="card">
							<div class="card-header">
								<img class="circular--square" src="Image/Circle_man1.png" />
								<h1>${data1.username}</h1>
							</div>
							<div class="card-body">
								<img src="Image/post2.jpg" class="card-img-top" alt="...">
								<h5 class="card-subtitle mb-2 text-body-secondary">Special
									title treatment</h5>
								<p class="card-text">${posts1.caption}</p>
								<div class="btn-group" role="group"
									aria-label="Button group with nested dropdown" style="margin-left: -4px;">
									<button type="button" class="btn btn-primary">
										${posts1.likes} <a
											href="/All_hit_like/${posts1.id}/${data1.id}/${data.id}"
											class="btn btn-primary"><img class="circular--square"
											src="Image/Like1.jpg" /></a>
									</button>
									<button type="button" class="btn btn-primary">
										${posts1.dislikes}<a
											href="/All_hit_Dislike/${posts1.id}/${data1.id}/${data.id}"
											class="btn btn-primary"><img class="circular--square"
											src="Image/Dislike.jpg" /></a>
									</button>
									<button type="button" class="btn btn-primary">
										3 <a href="#" class="btn btn-primary"><img
											class="circular--square" src="Image/Comment.png" /></a>
									</button>


								</div>

							</div>


						</div>
					</div>
				</c:forEach>
			</c:forEach>
		</div>
	</div>
	<!-- END OF FOR LOOP -->

</body>
</html>