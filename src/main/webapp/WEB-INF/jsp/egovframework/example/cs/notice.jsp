<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<!DOCTYPE html>
<html data-wf-page="6736e4de6c3a559d5e472891" data-wf-site="66fa23fa604f581407c85fa7">
<head>
  <meta charset="utf-8">
 <jsp:include page="../frame/header.jsp"></jsp:include>
</head>
<body>
  <div class="bg-frame page2">
    <div class="form-block w-form">
      <div class="form" data-wf-page-id="6736e4de6c3a559d5e472891" data-wf-element-id="2c1137b9-0edf-6c30-fd6c-c555d1627979">
        <jsp:include page="../frame/menu.jsp"></jsp:include>
        <div class="service-main f-top">
          <div class="frame-2 notice">
            <h1 class="heading2 notice"><spring:message code="notice.head"/><br></h1>
            <div class="notice-top" style="display: none">
              <a href="#" class="notice-btn on w-button">category1</a>
              <a href="#" class="notice-btn w-button">category1</a>
              <a href="#" class="notice-btn w-button">category1</a>
              <a href="#" class="notice-btn w-button">category1</a>
              <a href="#" class="notice-btn w-button">category1</a>
            </div>
            <%-- <c:if test="${fn:length(list) == 0 }">
	            <div class="empty-div" style="display: flex">EMPTY</div>
            </c:if>
            <c:if test="${fn:length(list) > 0 }"> --%>
	            <div class="notice-list" style="display: flex">
	              <div class="w-layout-vflex notice-list-box">
	              	<c:if test="${lang == 'ko' }">
		                <div class="list-n on">
		                  <div class="spreads-txt-sub _3">
		                    <div class="new">Notice</div>
		                  </div>
		                  <div class="spreads-txt-sub notice">출금한도 주의사항</div>
		                  <div class="spreads-txt-sub _3 gray"></div>
		                  <a href="#" class="arrow-btn notice w-button"></a>
		                </div>
		                <div class="how-social-detail notice-detail none">
		                  <div class="hsd-txt">
		                  	친애하는 troymarket 이용자 여러분, 출금한도는 월 50,000입니다.<br/> 이 부분 유의하여 이용부탁드립니다.<br/><br/>감사합니다.
		                  </div>
		                </div>
	                </c:if>
	                <c:if test="${lang != 'ko' }">
		                <div class="list-n on">
		                  <div class="spreads-txt-sub _3">
		                    <div class="new">Notice</div>
		                  </div>
		                  <div class="spreads-txt-sub notice">Notice on withdrawal limit</div>
		                  <div class="spreads-txt-sub _3 gray"></div>
		                  <a href="#" class="arrow-btn notice w-button"></a>
		                </div>
		                <div class="how-social-detail notice-detail none">
		                  <div class="hsd-txt">
		                  	Dear troymarket users, the withdrawal limit is 50,000 per month. <br/> Please be aware of this when using it. <br/><br/>Thank you.
		                  </div>
		                </div>
	                </c:if>
	              	<c:forEach var="item" items="${list}">
		                <div class="list-n on" id="n_${item.idx}">
		                  <div class="spreads-txt-sub _3">
		                    <div class="new">Notice</div>
		                  </div>
		                  <div class="spreads-txt-sub notice">${item.title}</div>
		                  <div class="spreads-txt-sub _3 gray"><fmt:formatDate value="${item.ndate }" pattern="yyyy-MM-dd"/></div>
		                  <a href="#" class="arrow-btn notice w-button"></a>
		                </div>
		                <div class="how-social-detail notice-detail none">
		                  <div class="hsd-txt">
		                  	${item.text}
		                  </div>
		                </div>
	              	</c:forEach>
	              </div>
	              <!-- <div class="w-layout-vflex notice-list-box">
	                <div class="list-n">
	                  <div class="spreads-txt-sub _3 gray">1</div>
	                  <div class="spreads-txt-sub notice gray">Please complete the form below and a member of our support team</div>
	                  <div class="spreads-txt-sub _3 gray">2024-01-01</div>
	                  <a href="#" class="arrow-btn notice w-button"></a>
	                </div>
	                <div class="how-social-detail notice-detail none">
	                  <div class="hsd-txt">Followers choose the Providers they would like to subscribe to. You can subscribe to one Provider per trading account, so if you have multiple trading accounts you can subscribe to multiple Providers. Our Social Trading platform displays many metrics and stats for every Provider to help you make informed choices.</div>
	                </div>
	              </div> -->
	            <div class="paging">
	              <ui:pagination paginationInfo="${pi}" jsFunction="page" type="user"/>
	            </div>
	            <form name="listForm" id="listForm" action="/cs/notice/${lang}">
					<input type="hidden" name="pageIndex"/>
				</form>
	          </div>
            <%-- </c:if> --%>
        </div>
      </div>
      <div class="w-form-done">
        <div>Thank you! Your submission has been received!</div>
      </div>
      <div class="w-form-fail">
        <div>Oops! Something went wrong while submitting the form.</div>
      </div>
    </div>
  </div>
  <jsp:include page="../frame/riskfooter.jsp"></jsp:include>
  <jsp:include page="../frame/footer.jsp"></jsp:include>
   <script>
	function page(num) {
		document.listForm.pageIndex.value = num;
		document.listForm.submit();
	}
	$(function(){
		  // 소셜 타이틀 클릭 이벤트 설정
		  const socialTitles = document.querySelectorAll('.list-n');
		  const socialDetails = document.querySelectorAll('.how-social-detail');
		  socialTitles.forEach(title => {
		    title.addEventListener('click', () => {
		      const isOpen = title.classList.contains('click');
		      socialTitles.forEach(t => t.classList.remove('click'));
		      socialDetails.forEach(detail => detail.style.display = 'none');
		      if (!isOpen) {
		        title.classList.add('click');
		        title.nextElementSibling.style.display = 'flex';
		      }
		    });
		  });
		  
		  // idx 파라미터 처리
		  let nidx = "${idx}";
		  if(nidx != null && nidx != ''){
		    console.log('click...');
		    // 직접 DOM 엘리먼트를 찾아서 클릭 이벤트 트리거
		    const element = document.getElementById("n_"+nidx);
		    if(element) {
		      // 클릭 이벤트 수동 트리거
		      element.click();
		      // 해당 요소로 스크롤 이동
		      element.scrollIntoView({ behavior: 'smooth', block: 'center' });
		    } else {
		      console.log("Element n_" + nidx + " not found");
		    }
		  }
		});
</script>
</body>
</html>