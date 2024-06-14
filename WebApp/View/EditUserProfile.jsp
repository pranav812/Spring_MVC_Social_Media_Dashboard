<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
<link rel="stylesheet" type="text/css" href="CSS/Style.css">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Edit Profile</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="CSS/Style.css">


<style>
@charset "ISO-8859-1";

/* userHomePage Nav Tab*/
body {
	background: linear-gradient(106.5deg, rgba(255, 215, 185, 0.91) 23%,
		rgba(223, 159, 247, 0.8) 93%);
}

.navbar-brand {
	font-size: 40px;
	font-family: cursive;
}

.navbar>.container, .navbar>.container-fluid, .navbar>.container-lg,
	.navbar>.container-md, .navbar>.container-sm, .navbar>.container-xl,
	.navbar>.container-xxl {
	display: flex;
	flex-wrap: inherit;
	align-items: center;
	justify-content: space-between;
	background-color: lightcoral;
}

.navbar-nav {
	margin-left: 61px;
	height: 90px;
	padding-top: 12px;
}

.nav-link {
	font-size: 29px;
	font-family: 'Roboto', sans-serif;
}

.nav-item {
	margin-left: 21px;
	margin-top: 1px;
}

.card-header:first-child {
	border-radius: calc(.25rem - 1px) calc(.25rem - 1px) 0 0;
	font-size: 25px;
}

.circular--square {
	border-top-left-radius: 10% 10%;
	border-top-right-radius: 10% 10%;
	border-bottom-right-radius: 10% 10%;
	border-bottom-left-radius: 10% 10%;
	height: 41px;
}

.tab-content {
	margin-left: 30%;
}

.btn {
	border-radius: 12px;
}

.personal_Page_Logo {
	margin-top: 9px;
	height: 231px;
	border-radius: 12px;
	margin-bottom: 16px;
}

.container_EditBtn {
	display: flex;
}

.card-title {
	font-size: 40px;
}

.card-text {
	font-size: 20px;
}

.card-link {
	font-size: 17px;
	color: white;
}

hr.new4 {
	border: 1px solid red;
}

.display-3 {
	margin-left: 180px;
}

.btn-group {
	margin-left: 53px;
	font-size: 19px;
	width: 80px;
}

.display-6 {
	margin-left: 210px;
	margin-right: 112px;
	margin-top: 9px;
	font-size: 41px;
	font-style: oblique;
}

.gradient-custom-2 {
	/* fallback for old browsers */
	background: #fccb90;
	/* Chrome 10-25, Safari 5.1-6 */
	background: -webkit-linear-gradient(to right, #ee7724, #d8363a, #dd3675, #b44593);
	/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
	background: linear-gradient(to right, #ee7724, #d8363a, #dd3675, #b44593);
}

@media ( min-width : 768px) {
	.gradient-form {
		height: 100vh !important;
	}
}

@media ( min-width : 769px) {
	.gradient-custom-2 {
		border-top-right-radius: .3rem;
		border-bottom-right-radius: .3rem;
	}
}
</style>
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
						<li class="nav-item"><a class="nav-link"
							href="/getuserprofile${data.id}">My Profile</a>
						<li class="nav-item"><a class="nav-link" href="#">All
								Details</a></li>

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
		</nav>
	</div>

	<section class="h-100 gradient-form" style="background-color: #eee;">
		<div class="container py-5 h-100">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col-xl-10">
					<div class="card rounded-3 text-black">
						<div class="row g-0">
							<div class="col-lg-6">
								<div class="card-body p-md-5 mx-md-4">

									<div class="text-center">
										<img src="/Image/Circle_man1.png" style="width: 185px;"
											alt="logo">
										<h4 class="mt-1 mb-5 pb-1">Edit Your Profile</h4>
									</div>

									<form action="<c:url value='/edit/${data.id}'/>" method="post">

										<div class="mb-3">
											<label for="username" class="form-label">Username:
												${data.username}</label> <input type="text" class="form-control"
												name="username" id="username" value="${data.username}">
											<div class="form-text">Enter the username you want to
												change</div>
										</div>
										<div class="mb-3">
											<label for="bio" class="form-label">Bio: ${data.bio}</label>
											<input type="text" class="form-control" name="bio" id="bio"
												value="${data.bio}">
											<div class="form-text">Enter the bio.</div>
										</div>


										<div class="mb-3">
											<label for="password" class="form-label">Password:
												${data.password}</label> <input type="password" class="form-control"
												name="password" id="password" value="${data.password}">
											<div class="form-text">Enter the password you want to
												change</div>
										</div>

										<button type="submit" class="btn btn-primary">Submit</button>
									</form>

								</div>
							</div>
							<div class="col-lg-6 d-flex align-items-center gradient-custom-2">
								<div class="text-white px-3 py-4 p-md-5 mx-md-4">
									<h4 class="mb-4">Your Platform for Powerful Ideas</h4>
									<p class="small mb-0">social media are crucial for
										establishing a strong online identity. A memorable username
										makes it easy for people to find and recognize you, while a
										well-crafted bio provides a quick snapshot of who you are and
										what you offer. Together, they enhance your professional
										image, boost your profile's searchability, and engage
										visitors. Keeping these elements consistent, relevant, and
										up-to-date helps build credibility, attract followers, and
										foster a sense of community. In essence, your username and bio
										are key tools for effective personal branding and online
										presence.</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>
</html>
