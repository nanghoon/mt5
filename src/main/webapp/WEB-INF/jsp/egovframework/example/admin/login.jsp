<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//Dth HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dth">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="adminFrame/header.jsp"></jsp:include>
</head>
<body>
<div class="container">
	<div class="row">
		<div class="col-md-4 col-md-offset-4">
			<div class="login-panel panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">로그인</h3>
				</div>
				<div class="panel-body">
					<form id="loginForm" role="form" method="post">
						<fieldset>
							<div class="form-group">
								<input class="form-control" placeholder="Id" name="id" type="text" autofocus onKeyPress="if(event.keyCode==13) { javascript:login(); return false; }">
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="Password" name="pw" type="password" onKeyPress="if(event.keyCode==13) { javascript:login(); return false; }">
							</div>
							<button type="button" class="btn btn-lg btn-success btn-block" onclick="javascript:login()">Login</button>
						</fieldset>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
<jsp:include page="adminFrame/footer.jsp"></jsp:include>
</body>
<script>
function login(){
	$.ajax({
		type :'post',
		url : '/admin/loginProcess.do',
		data : $("#loginForm").serialize(),
		success:function(data){
			if(data.result == 'suc'){
				location.href = '/admin/notice/list.do?lang=en';
			}
			else alert(data.msg);
		},error:function(e){
			console.log(JSON.stringify(e));
		}
	})
}
</script>
</html>