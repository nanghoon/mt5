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
					<h1 class="page-header">${info.lang} 공지사항 상세 정보</h1>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-body">
							<form name="updateForm" id="updateForm">
								<input type="hidden" name="idx" value="${info.idx}" />
								<div class="row">
									<div class="col-lg-12">
										<div class="form-group">
											<label>제목</label> 
											<input class="form-control" value="${info.title}" name="title" id="title" maxlength="100">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-lg-12">
										<div class="form-group">
											<label>내용</label>
											<textarea class="form-control" rows="15" name="text" id="smartEditor">${info.text}</textarea>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-lg-12">
										<div class="form-group">
											<label>등록일</label>
											<input type="date" class="form-control" value="${fn:substring(info.ndate, 0, 10)}" name="ndate" id="ndate" maxlength="100">
										</div>
									</div>
								</div>
								<button type="button" onclick="location.href='/admin/notice/list.do?lang=${info.lang}'" class="btn btn-outline btn-default">목록</button>
								<button type="button" onclick="javascript:updateProcess()" class="btn btn-info">수정</button>
								<button type="button" onclick="javascript:deleteProcess(${info.idx})" class="btn btn-danger">삭제</button>
							</form> 
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="adminFrame/footer.jsp"></jsp:include>
	<script>
	function page(pageNo){
		document.listForm.pageIndex.value = pageNo;
	   	document.listForm.submit();
	}
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
	function updateProcess(){
		oEditors.getById["smartEditor"].exec("UPDATE_CONTENTS_FIELD",[]);
		$.ajax({
			type:'post',
			data : $("#updateForm").serialize(),
			url : "/admin/notice/update.do",
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
	
	function deleteProcess(idx){
		if(confirm("삭제하시겠습니까? 복구하실 수 없습니다.")){
			jQuery.ajax({
				type:'post',
				url : '/admin/notice/delete.do?idx='+idx,
				success:function(data){
					if(data.result == 'success'){
						alert("삭제되었습니다.");
						location.href= '/admin/notice/list.do?lang=${info.lang}';
					}else{
						alert("에러가 발생했습니다. 다시 시도해주세요");
						location.reload();
					}
				},
				errer:function(e){
					console.log('error' + e);
				}
			});
		}else{
			return;
		}
	}
	</script>
</body>
</html>