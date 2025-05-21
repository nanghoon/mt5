<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<!DOCTYPE html PUBLIC "-//W3C//Dth HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dth">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="adminFrame/header.jsp"></jsp:include>
</head>
<body>
	<div id="wrapper">
		<jsp:include page="adminFrame/left.jsp"></jsp:include>
		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">${lang} 공지사항 목록</h1>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading"></div>
						<div class="panel-body">
							<form action="/admin/notice/list.do" name="listForm" id="listForm">
								<input type="hidden" name="pageIndex" value="1" />
								<input type="hidden" name="lang" value="${lang}" />
							</form>
							<div class="table-responsive">
								<table class="table table-hover table-striped">
									<thead>
										<tr>
											<th>번호</th>
											<th>제목</th>
											<th>등록일</th>
										</tr>
									</thead>
									<tbody>
										<c:set var="number" value="${pi.totalRecordCount -pi.recordCountPerPage*(pi.currentPageNo-1) }" />
										<c:forEach var="item" items="${list}" varStatus="i">
											<tr onclick="location.href='/admin/notice/detail.do?idx=${item.idx}'" style="cursor:pointer;">
												<td>${number}<c:set var="number" value="${number - 1}" /></td>
												<td>${item.title}</td>
												<td><fmt:formatDate value="${item.ndate}" pattern="yyyy-MM-dd"></fmt:formatDate></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-12" style="text-align:center;">
								<ul class="pagination">
									<ui:pagination paginationInfo="${pi}" type="admin" jsFunction="page" />
								</ul>
							</div>
						</div>
					</div>
					<button type="button" onclick="location.href='/admin/notice/insert.do?lang=${lang}'" class="btn btn-outline btn-default">등록</button>
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
</script>
</body>
</html>