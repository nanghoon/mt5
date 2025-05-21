<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html data-wf-page="6736ecc81c6bdfcf5f89be00" data-wf-site="66fa23fa604f581407c85fa7">
<head>
  <meta charset="utf-8">
  <jsp:include page="../frame/header.jsp"></jsp:include>
</head>
<body>
  <div class="bg-frame page2">
    <div class="form-block w-form">
      <form class="form" data-wf-page-id="6736ecc81c6bdfcf5f89be00" data-wf-element-id="248d7c1f-9380-cde7-07ab-cbb29c0a55dc">
        <jsp:include page="../frame/menu.jsp"></jsp:include>
        <div class="service-main">
          <div class="frame-2 black">
            <h1 class="heading2 notice">QNA<br></h1>
            <h1 data-w-id="e9360dce-6c23-f11f-e8ed-2b7b0f3e91eb" style="-webkit-transform:translate3d(0, 150px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-moz-transform:translate3d(0, 150px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-ms-transform:translate3d(0, 150px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);transform:translate3d(0, 150px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);opacity:0" class="heading4 _2"><span class="text-span-138">TROY Markets</span></h1>
            <div class="how-social-box">
              <div class="how-social-title on">
                <div class="how-social-txt bold"><spring:message code="qna.serviceMain-hst"/></div>
              </div>
              <div class="how-social-detail">
                <div class="hsd-txt"><spring:message code="qna.serviceMain-detail"/></div>
              </div>
            </div>
            <div class="how-social-box">
              <div class="how-social-title">
                <div class="how-social-txt"><spring:message code="qna.serviceMain-hst2"/></div>
                <a href="#" class="arrow-btn w-button"></a>
              </div>
              <div class="how-social-detail none">
                <div class="hsd-txt"><spring:message code="qna.serviceMain-detail2"/></div>
              </div>
            </div>
            <div class="how-social-box">
              <div class="how-social-title">
                <div class="how-social-txt"><spring:message code="qna.serviceMain-hst3"/></div>
                <a href="#" class="arrow-btn w-button"></a>
              </div>
              <div class="how-social-detail none">
                <div class="hsd-txt"><spring:message code="qna.serviceMain-detail3"/></div>
              </div>
            </div>
            <div class="how-social-box">
              <div class="how-social-title">
                <div class="how-social-txt"><spring:message code="qna.serviceMain-hst4"/></div>
                <a href="#" class="arrow-btn w-button"></a>
              </div>
              <div class="how-social-detail none">
                <div class="hsd-txt"><spring:message code="qna.serviceMain-detail4"/></div>
              </div>
            </div>
            <div class="how-social-box">
              <div class="how-social-title">
                <div class="how-social-txt"><spring:message code="qna.serviceMain-hst5"/></div>
                <a href="#" class="arrow-btn w-button"></a>
              </div>
              <div class="how-social-detail none">
                <div class="hsd-txt"><spring:message code="qna.serviceMain-detail5"/></div>
              </div>
            </div>
            <div class="how-social-box">
              <div class="how-social-title">
                <div class="how-social-txt"><spring:message code="qna.serviceMain-hst6"/></div>
                <a href="#" class="arrow-btn w-button"></a>
              </div>
              <div class="how-social-detail none">
                <div class="hsd-txt"><spring:message code="qna.serviceMain-detail6"/></div>
              </div>
            </div>
            <div class="paging">
              <a href="#" class="paging-btn leftt-arrow w-button"></a>
              <a href="#" class="paging-btn on w-button">1</a>
              <a href="#" class="paging-btn right-arrow w-button"></a>
            </div>
            <div class="hsd-txt mg5"><spring:message code="qna.serviceMain-stxt"/></div>
          </div>
        </div>
      </form>
    </div>
  </div>
  <jsp:include page="../frame/riskfooter.jsp"></jsp:include>
  <jsp:include page="../frame/footer.jsp"></jsp:include>
  <script>
	document.addEventListener('DOMContentLoaded', () => {
	  const socialTitles = document.querySelectorAll('.how-social-title');
	  const socialDetails = document.querySelectorAll('.how-social-detail');
	  socialTitles.forEach(title => {
	    title.addEventListener('click', () => {
	      const isOpen = title.classList.contains('on');
	      socialTitles.forEach(t => t.classList.remove('on'));
	      socialDetails.forEach(detail => detail.style.display = 'none');
	      if (!isOpen) {
	        title.classList.add('on');
	        title.nextElementSibling.style.display = 'flex';
	      }
	    });
	  });
	});
</script>
</body>
</html>