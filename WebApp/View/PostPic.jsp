<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Bootstrap Demo</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="CSS/Style.css">


</head>
<body
	style="background: linear-gradient(106.5deg, rgba(255, 215, 185, 0.91) 23%, rgba(223, 159, 247, 0.8) 93%);">


	<div class="container py-4" style="background-color: db1861;">
		<div class="row g-0 align-items-center">
			<div class="col-lg-6 mb-5 mb-lg-0">
				<div class="card bg-body-tertiary">
					<div class="card-body p-5 shadow-5 text-center">
						<h2 class="fw-bold mb-5">Add New Post</h2>
						<form action="/newpost/${post.id}" method="post"
							enctype="multipart/form-data">
							<div class="row mb-4">
								<div class="col">
									<h1>${post.id}</h1>
									<input type="file" class="form-control" name="file"
										accept="image/*" required>
								</div>
							</div>
							<div class="mb-4">
								<textarea class="form-control" name="caption" rows="4"
									placeholder="Enter the Caption" required></textarea>
							</div>
							<div class="form-check mb-4">
								<input class="form-check-input" type="checkbox" value=""
									id="acceptTerms" required> <label
									class="form-check-label" for="acceptTerms">Accept All
									Terms and Services</label>
							</div>
							<button type="submit" class="btn btn-primary btn-block">Post</button>
						</form>
					</div>
				</div>
			</div>
			<div class="col-lg-6 mb-5 mb-lg-0">
				<img
					src="https://mdbootstrap.com/img/new/ecommerce/vertical/004.jpg"
					class="w-100 rounded-4 shadow-4" alt="Placeholder image">
			</div>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>
</html>
