<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html data-wf-page="6736ec5b8902844654c23f5a" data-wf-site="66fa23fa604f581407c85fa7">
<head>
  <meta charset="utf-8">
  <jsp:include page="../frame/header.jsp"></jsp:include>
</head>
<body>
  <div class="bg-frame page2">
    <div class="form-block w-form">
      <form class="form" data-wf-page-id="6736ec5b8902844654c23f5a" data-wf-element-id="95947f44-838e-1a1e-2d28-fac2546813e9">
        <jsp:include page="../frame/menu.jsp"></jsp:include>
        <div class="service-main">
          <div class="frame-2 notice">
            <div class="support-box">
              <h1 class="heading2 support"><spring:message code="cs.head"/><br></h1>
              <div class="bright-g-txt"><spring:message code="cs.gtxt"/><br></div>
              <div class="input-box">
                <div class="sp-txt"><spring:message code="cs.name"/></div><input class="support-input w-input" maxlength="256" name="field-3" data-name="Field 3" placeholder="" type="text" id="field-3" required="">
              </div>
              <div class="input-box">
                <div class="sp-txt"><spring:message code="cs.nameL"/></div><input class="support-input w-input" maxlength="256" name="field-3" data-name="Field 3" placeholder="" type="text" id="field-3" required="">
              </div>
              <div class="input-box">
                <div class="sp-txt"><spring:message code="cs.email"/></div><input class="support-input w-input" maxlength="256" name="field-3" data-name="Field 3" placeholder="" type="text" id="field-3" required="">
              </div>
              <div class="input-box">
                <div class="sp-txt"><spring:message code="cs.account"/></div><input class="support-input w-input" maxlength="256" name="field-3" data-name="Field 3" placeholder="" type="text" id="field-3" required="">
              </div>
              <div class="input-box">
                <div class="sp-txt"><spring:message code="cs.type"/></div><select id="field-4" name="field-4" data-name="Field 4" class="support-select w-select">
                  <option value="Another option">Basic</option>
                </select>
              </div>
              <a href="#" class="send-btn w-button"><spring:message code="cs.btn"/></a>
            </div>
          </div>
        </div>
      </form>
    </div>
  </div>
  <jsp:include page="../frame/riskfooter.jsp"></jsp:include>
  <jsp:include page="../frame/footer.jsp"></jsp:include>
</body>
</html>