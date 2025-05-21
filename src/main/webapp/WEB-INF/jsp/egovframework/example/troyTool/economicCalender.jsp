<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html data-wf-page="673c250004cb435e9b34d7c7" data-wf-site="66fa23fa604f581407c85fa7">
<head>
  <meta charset="utf-8">
  <jsp:include page="../frame/header.jsp"></jsp:include>
</head>
<body>
  <div class="bg-frame page2">
    <div class="form-block w-form">
      <form class="form" data-wf-page-id="673c250004cb435e9b34d7c7" data-wf-element-id="af3e75c5-9f77-7b8a-5191-5d4cabea0504">
        <jsp:include page="../frame/FixMenu.jsp"></jsp:include>
        <section class="main-section calculator">
          <div data-w-id="af3e75c5-9f77-7b8a-5191-5d4cabea052f" style="-webkit-transform:translate3d(0, 150px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-moz-transform:translate3d(0, 150px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-ms-transform:translate3d(0, 150px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);transform:translate3d(0, 150px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);opacity:0" class="frame-2">
            <h1 class="heading"><spring:message code="eco.mainSe-head"/></h1>
            <div class="sub-txt"><spring:message code="eco.mainSe-stxt"/></div>
            <a href="#" class="button w-button"><spring:message code="eco.mainSe-btn"/></a>
            <a href="#" class="button _2 w-inline-block">
              <div class="btn-txt"><spring:message code="eco.mainSe-btn2"/></div>
            </a>
          </div>
        </section>
        <section class="section-pip">
          <div data-w-id="dfdb6878-96be-2b4a-0e1e-1f614eaf4ff6" style="-webkit-transform:translate3d(0, 150px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-moz-transform:translate3d(0, 150px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-ms-transform:translate3d(0, 150px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);transform:translate3d(0, 150px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);opacity:0" class="frame-2">
            <div class="txt-sub-title"><spring:message code="eco.pipSe-title"/></div>
            <h1 class="heading4"><spring:message code="eco.pipSe-head"/></h1>
            <div class="market-list-box">
              <div class="list-box">
                <div id="economicCalendarWidget"></div>
              </div>
            </div>
          </div>
        </section>
        <jsp:include page="../frame/successSection.jsp"></jsp:include>
        <jsp:include page="../frame/serviceSection.jsp"></jsp:include>
      </form>
    </div>
  </div>
  <jsp:include page="../frame/riskfooter.jsp"></jsp:include>
  <jsp:include page="../frame/footer.jsp"></jsp:include>
  
  <script async type="text/javascript" data-type="calendar-widget" src="https://www.tradays.com/c/js/widgets/calendar/widget.js?v=13">
  	{"width":"100%","height":"100%","mode":"2"}
  </script>
</body>
</html>