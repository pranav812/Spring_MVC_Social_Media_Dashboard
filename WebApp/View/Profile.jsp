<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Profile</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="CSS/Style.css">


</head>
<body>

	<jsp:include page="NavBar.jsp" />


	<div class="container">
		<div id="nav-profile" role="tabpanel"
			aria-labelledby="nav-profile-tab" tabindex="0">

			<div class="card" style="width: 100%;">
				<div class="card-body">
					<div class="container_EditBtn">
						<h5 class="card-title">${data.username}</h5>
						<button type="button" class="btn btn-success"
							style="margin-left: 311px">
							<a href="ViewAllDetails/${data.id}" class="card-link">ALL
								Details</a>
						</button>
					</div>
					<img class="personal_Page_Logo circular--square"
						src="Image/Circle_man1.png" />

					<h6 class="card-text card-subtitle mb-2 text-body-secondary">${data.bio}</h6>
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
					<button type="button" class="btn btn-success"
						style="margin-left: 14px">
						<a href="<c:url value='/addnewpost/${data.id}'/>"
							class="card-link">Add New Post</a>
					</button>
					<button type="button" class="btn btn-success"
						style="margin-left: 11px">
						<a href="<c:url value='/editdetails/${data.id}'/>"
							class="card-link">Edit Profile</a>
					</button>
					<hr class="new4">
					<div class="container text-center">

						<div class="row g-2">
							<c:forEach var="posts" items="${allpost}">

								<div class="col-6">
									<div class="p-3">



										<div class="card">
											<div class="card-header" style="display: flex;">
												<img class="circular--square" src="Image/Circle_man1.png" />
												${data.username}
												<div class="dropdown" style="margin-left: 100px;">
													<button class="btn btn-secondary dropdown-toggle"
														type="submit" data-bs-toggle="dropdown"
														aria-expanded="false" style="margin-left: 160px">More</button>
													<ul class="dropdown-menu">
														<li><button class="dropdown-item" type="button">Action
															</button></li>
														<li><button class="dropdown-item" type="button">Another
																action</button></li>
														<li><button class="dropdown-item" type="button">Something
																else here</button></li>
													</ul>
												</div>
											</div>

											<div class="card-body">
												<img src="/image/${post.image}" alt="Post Image"
													class="card-img-top">

												<h5 class="card-title">${posts.caption}</h5>
												<p class="card-text">${posts.caption}----------------</p>

												<div class="bt-group" role="group"
													aria-label="Button group with nested dropdown">
													<button type="submit" class="btn btn-primary">
														${posts.likes} <a
															href="/personal_hit_like/${posts.id}/${data.id}"
															class="btn btn-primary"><img class="circular--square"
															src="Image/Like1.jpg" /></a>
													</button>
													<button type="button" class="btn btn-primary">
														${posts.dislikes} <a
															href="/personal_hit_dislike/${posts.id}/${data.id}"
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

								</div>
							</c:forEach>
							<!-- END OF FOR LOOP -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
		crossorigin="anonymous"></script>


</body>
</html>
