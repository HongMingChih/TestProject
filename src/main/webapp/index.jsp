<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
	
	<!-- 第一層 -->
	<div class="container-fluid">
		<div class="row content2">
			<div class="col-sm-3 sidenav"></div>

			<div class="col-sm-6 sidenav">
				<div class="card shadow-lg border-0 rounded-lg mt-5">
					<div class="card-header">
						<H3>登入帳號</H3>
					</div>
					<div class="card-body">
						<c:if test="${not empty requestScope.loginMsg}">
								系統回應：<p style="color:blue;">${requestScope.loginMsg}</p>
							</c:if>
						<form action="LoginAction.do?action=login" method="post">
							<div class="form-floating mb-3">
								<input type="text" class="form-control" name="identificationNo"" 
									required="required" placeholder="請輸入帳號(身分證字號)">
							</div>

							<div class="form-floating mb-3">
								<input type="password" class="form-control" name="password" " 
								required="required" placeholder="請輸入密碼"><label
									for="exampLeInputPassword1"></label>
							</div>
						
	
							<div
								class="d-flex align-items-center justify-content-between mt-4 mb-0">
								<a class="small" href="#">忘記密碼？</a> <a
									class="small" href="RegisterAccount.html">註冊帳號</a> 
									<a href="#">返回首頁</a>

							</div>

							<div>
								<button type="reset" class="btn btn-primary reset" id="reset">重填</button>
								<button type="submit" class="btn btn-primary Login" id="enter">登入</button>
								<br>
								<br>

							</div>

						</form>
					</div>
				</div>
				<div class="col-sm-3 sidenav"></div>
			</div>
		</div>
	</div>
	<!-- 第三層 -->
	
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	
</body>
</html>