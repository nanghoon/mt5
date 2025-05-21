<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
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
					<h1 class="page-header">${lang} 공지사항 등록</h1>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading"></div>
						<div class="panel-body">
							<form name="insertForm" id="insertForm">
								<input type="hidden" name="lang" value="${lang}"/>
								<div class="row">
									<div class="col-lg-12">
										<div class="form-group">
											<label>제목</label> 
											<input class="form-control" placeholder="제목" name="title" id="title" maxlength="100">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-lg-12">
										<div class="form-group">
											<label>내용</label>
											<textarea class="form-control" rows="15" name="text" id="smartEditor"></textarea>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-lg-12">
										<div class="form-group">
											<label>등록일</label> 
											<input type="date" class="form-control" placeholder="등록일" name="ndate" id="ndate" maxlength="100">
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<button type="button" onclick="location.href='/admin/notice/list.do?lang=${lang}'" class="btn btn-outline btn-default">목록</button>
			<button type="button" onclick="javascript:insertProcess()" class="btn btn-info">등록</button>
		</div>
	</div>
	<jsp:include page="adminFrame/footer.jsp"></jsp:include>
	<script>
	var oEditors = []; 
	nhn.husky.EZCreator.createInIFrame({ 
	  oAppRef : oEditors, 
	  elPlaceHolder : "smartEditor",  
	  sSkinURI : "${pageContext.request.contextPath}/se2/SmartEditor2Skin.html",  
	  fCreator : "createSEditor2", 
	  htParams : {  
	    bUseToolbar : true,   // 툴사용여부 
	    bUseVerticalResizer : false, // 입력창 크기 조절 바 
	    //bSkipXssFilter : true, // xss 필터 
	    bUseModeChanger : false  // 텍스트 모드 변경 
	    },
	});
	function insertProcess(){
		oEditors.getById["smartEditor"].exec("UPDATE_CONTENTS_FIELD",[]);
		$.ajax({
			type:'post',
			url : "/admin/notice/insertProcess.do",
			data: $("#insertForm").serialize(),
			success:function(data){
				if(data.result == 'success'){
					alert("등록이 완료되었습니다.");
					location.href="/admin/notice/list.do?lang=${lang}";
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