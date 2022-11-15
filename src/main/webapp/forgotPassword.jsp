<!doctype html>
<html>
<head>
<meta charset='utf-8'>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<title>Forgot Password</title>
<link href='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css' rel='stylesheet'>
<jsp:include page="header.jsp"></jsp:include>
<style>
body {
	background-position: center;
	background-color: #eee;
	background-repeat: no-repeat;
	background-size: cover;
	color: #505050;
	font-family: "Rubik", Helvetica, Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	line-height: 1.5;
	text-transform: none
}

.forgot {
	background-color: #fff;
	padding: 12px;
	border: 1px solid #dfdfdf
}

.padding-bottom-3x {
	padding-bottom: 72px !important
}

.card-footer {
	background-color: #fff
}

.btn {
	font-size: 13px
}

.form-control:focus {
	color: #495057;
	background-color: #fff;
	border-color: #76b7e9;
	outline: 0;
	box-shadow: 0 0 0 0px #28a745
}
</style>
</head>
<body class='snippet-body'>
	<div class="container padding-bottom-3x mb-2 mt-5">
		<div class="row justify-content-center">
			<div class="col-lg-8 col-md-10">
				<div class="forgot">
					<h2>Forgot your password?</h2>
					
					
				</div>
				<form class="card mt-4" action="login.jsp" method="POST">
					<div class="card-body">
						<div class="form-group">
							<label for="email-for-pass">Enter your Email Address</label> <input
								class="form-control" type="text" name="email" id="email-for-pass" required>
								<small class="form-text text-muted">Enter the registered Email Address to receive instructions on resetting password</small>
						</div>
					</div>
					<div class="card-footer">
						<button class="btn btn-success" type="submit">Reset Password</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>