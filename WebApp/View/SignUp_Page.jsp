<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<title>SignUp</title>
</head>
<body>
	<section class="vh-100" style="background-color: #9A616D;">
		<div class="container py-5 h-100">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col col-xl-10">
					<div class="card" style="border-radius: 1rem;">
						<div class="row g-0">
							<div class="col-md-6 col-lg-5 d-none d-md-block"
								style="margin-top: 92px">
								<img src="/Image/SignupImage1.jpg" alt="login form"
									class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
								<h1
									style="margin-left: 19px; font-size: 30px; margin-top: 38px; font-family: cursive;">We
									believe in the power of connectivity to drive positive change,
									unite diverse perspectives.</h1>
							</div>
							<div class="col-md-6 col-lg-7 d-flex align-items-center">
								<div class="card-body p-4 p-lg-5 text-black">

									<form action="SignUp_Details" method="post">

										<div class="d-flex align-items-center mb-3 pb-1">
											<i class="fas fa-cubes fa-2x me-3" style="color: #ff6219;"></i>
											<span class="h1 fw-bold mb-0">SyncCommunity Media</span>
										</div>

										<h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">SignUp
											into your account</h5>

										<div data-mdb-input-init class="form-outline mb-4">
											<input type="text" id="form2Example17"
												class="form-control form-control-lg" name="username"
												required /> <label class="form-label" for="form2Example17">UserName</label>
										</div>

										<div data-mdb-input-init class="form-outline mb-4">
											<input type="email" id="form2Example17"
												class="form-control form-control-lg" name="email" required />
											<label class="form-label" for="form2Example17">Email
												address</label>
										</div>

										<div data-mdb-input-init class="form-outline mb-4">
											<input type="text" id="form2Example17"
												class="form-control form-control-lg" name="dob" required />
											<label class="form-label" for="form2Example17">Date
												Of Birth</label>
										</div>
										<div data-mdb-input-init class="form-outline mb-4">
											<input type="text" id="form2Example17"
												class="form-control form-control-lg" name="age" required />
											<label class="form-label" for="form2Example17">Age</label>
										</div>
										<div class="mb-3">
											<label for="exampleInputEmail1" class="form-label">Gender</label>
											<div class="form-check">
												<input class="form-check-input" type="radio" name="gender"
													id="exampleRadios1" value="option1" checked> <label
													class="form-check-label" for="exampleRadios1"> Male
												</label>
											</div>
											<div class="form-check">
												<input class="form-check-input" type="radio" name="gender"
													id="exampleRadios2" value="option2"> <label
													class="form-check-label" for="exampleRadios2">
													Female </label>
											</div>
											<div class="form-check">
												<input class="form-check-input" type="radio" name="gender"
													id="exampleRadios3" value="option3"> <label
													class="form-check-label" for="exampleRadios3">
													Custom </label>
											</div>
										</div>

										<div data-mdb-input-init class="form-outline mb-4">
											<input type="password" id="form2Example27"
												class="form-control form-control-lg" name="password"
												required /> <label class="form-label" for="form2Example27">Password</label>
										</div>

										<div class="pt-1 mb-4">
											<button data-mdb-button-init data-mdb-ripple-init
												class="btn btn-dark btn-lg btn-block" type="submit">Submit</button>
										</div>
									</form>
									<a href="#!" class="small text-muted">Terms of use.</a> <a
										href="#!" class="small text-muted">Privacy policy</a>


								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>



	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>


</body>
</html>
