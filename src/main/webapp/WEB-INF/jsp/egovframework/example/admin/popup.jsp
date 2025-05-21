<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="adminFrame/header.jsp"></jsp:include>
</head>
<script src="/se2/js/HuskyEZCreator.js" charset="utf-8" ></script>
<body>
	<div id="wrapper">
		<jsp:include page="adminFrame/left.jsp"></jsp:include>
		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">메인 팝업 세팅</h1>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-body">
							<form name="updateForm" id="updateForm">
								<input type="hidden" name="idx" value="${info.idx}" />
								<div class="row">
									<div class="col-lg-6">
										<div class="row">
											<div class="col-lg-12">
												<div class="form-group">
													<label>1번문구</label> 
													<input class="form-control" value="${info.title}" name="title" id="title" maxlength="100">
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-lg-12">
												<div class="form-group">
													<label>2번문구</label>
													<textarea class="form-control" rows="5" name="sub">${info.sub}</textarea>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-lg-12">
												<div class="form-group">
													<label>3번문구</label>
													<input class="form-control" value="${info.pdate}" name="pdate" id="pdate" maxlength="100">
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-lg-12">
												<label>팝업 ON/OFF</label> 
												<div class="form-group">
													<label class="radio-inline"> 
														<input type="radio" name="pop" id="pop1" value="1" ${info.pop == 1 ? 'checked' : '' }>ON
													</label>
													<label class="radio-inline">
														<input type="radio" name="pop" id="pop0" value="0" ${info.pop == 0 ? 'checked' : '' }>OFF
													</label> 
												</div>
											</div>
										</div>
									</div>
									<div class="col-lg-6">
										<img src="/popup/sample.PNG" />
									</div>
								</div>
								<button type="button" onclick="javascript:updateProcess()" class="btn btn-info">수정</button>
							</form> 
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="adminFrame/footer.jsp"></jsp:include>
	<script>
	function updateProcess(){
		$.ajax({
			type:'post',
			data : $("#updateForm").serialize(),
			url : "/admin/popupSet.do",
			success:function(data){
				if(data.result == 'success'){
					alert("수정이 완료되었습니다.");
					location.reload()
				}else{
					alert(data.msg);
				}
			},
			error:function(e){
				console.log('ajaxError' + e);
			}
		});
	}
	</script>
</body>
</html>