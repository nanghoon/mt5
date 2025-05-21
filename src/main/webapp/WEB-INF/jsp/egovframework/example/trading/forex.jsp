<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html data-wf-page="670de9d23c2a05d69d224d9a" data-wf-site="66fa23fa604f581407c85fa7">
<head>
<meta charset="UTF-8">
<jsp:include page="../frame/header.jsp"></jsp:include>
</head>
<body class="body-2">
  <div class="bg-frame page2">
    <div class="form-block w-form">
      <form class="form" data-wf-page-id="670de9d23c2a05d69d224d9a" data-wf-element-id="4e1b7a06-9e06-cefc-19c6-bb04465165ae">
        <jsp:include page="../frame/FixMenu.jsp"></jsp:include>
        <section class="main-section">
          <div data-w-id="1d4c698e-534c-5dcd-f254-75615f0a5624" style="-webkit-transform:translate3d(0, 150px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-moz-transform:translate3d(0, 150px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-ms-transform:translate3d(0, 150px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);transform:translate3d(0, 150px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);opacity:0" class="frame-2">
            <h1 class="heading"><span class="text-span-71"><spring:message code="forex.mainSe-head"/></h1>
            <div class="sub-txt"><spring:message code="forex.mainSe-sub-txt"/></div>
            <a href="#spreads" class="button w-button"><spring:message code="forex.mainSe-btn"/></a>
            <a href="#" class="button _2 w-inline-block">
              <div class="btn-txt"><spring:message code="forex.mainSe-btn-account"/></div>
            </a>
          </div>
        </section>
        <section class="advatages-section">
          <div data-w-id="09990e3f-5c38-2f5d-929f-9a364842f9ce" style="-webkit-transform:translate3d(0, 150px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-moz-transform:translate3d(0, 150px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-ms-transform:translate3d(0, 150px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);transform:translate3d(0, 150px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);opacity:0" class="frame-2 black">
           	<spring:message code="forex.adSe-head"/>
            <div class="icon-list">
              <div class="icon-box">
                <div class="icon"></div>
                <div class="adbatages-txt"><spring:message code="forex.adSe-txt1"/></div>
              </div>
              <div class="icon-box">
                <div class="icon _2"></div>
                <div class="adbatages-txt"><spring:message code="forex.adSe-txt2"/></div>
              </div>
              <div class="icon-box">
                <div class="icon _3"></div>
                <div class="adbatages-txt"><spring:message code="forex.adSe-txt3"/></div>
              </div>
              <div class="icon-box">
                <div class="icon _4"></div>
                <div class="adbatages-txt"><spring:message code="forex.adSe-txt4"/></div>
              </div>
              <div class="icon-box">
                <div class="icon _5"></div>
                <div class="adbatages-txt"><spring:message code="forex.adSe-txt5"/></div>
              </div>
            </div>
            <a href="#spreads" class="button black w-button"><spring:message code="forex.adSe-btn"/></a>
          </div>
        </section>
        <section class="txt-section">
          <div class="frame-3">
            <h1 data-w-id="90920644-87dc-4261-bfce-0a795670a942" style="-webkit-transform:translate3d(0, 150px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-moz-transform:translate3d(0, 150px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-ms-transform:translate3d(0, 150px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);transform:translate3d(0, 150px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);opacity:0" class="heading3"><spring:message code="forex.txtSe-head"/></h1>
            <h1 data-w-id="0a226f79-1d61-253c-d14d-cd04022d0c40" style="-webkit-transform:translate3d(0, 150px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-moz-transform:translate3d(0, 150px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-ms-transform:translate3d(0, 150px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);transform:translate3d(0, 150px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);opacity:0" class="heading4"><spring:message code="forex.txtSe-head2"/></h1>
            <div class="sub-txt2"><spring:message code="forex.txtSe-sub"/></div>
            <div class="flex-g">
              <div class="forex-div-box">
              	<spring:message code="forex.txtSe-sdetail1"/>
              </div>
              <div class="forex-div-box">
              	<spring:message code="forex.txtSe-sdetail2"/>
              </div>
              <div class="forex-div-box">
              	<spring:message code="forex.txtSe-sdetail3"/>
              </div>
              <div class="forex-div-box">
              	<spring:message code="forex.txtSe-sdetail4"/>
              </div>
              <div class="forex-div-box">
              	<spring:message code="forex.txtSe-sdetail5"/>
              </div>
              <div class="forex-div-box">
              	<spring:message code="forex.txtSe-sdetail6"/>
              </div>
              <div class="forex-div-box">
              	<spring:message code="forex.txtSe-sdetail7"/>
              </div>
              <div class="forex-div-box _2"></div>
            </div>
          </div>
        </section>
        <section class="what-trading-section">
          <div class="img-forex"></div>
          <div class="frame-4 b">
            <h1 data-w-id="33960a66-ca23-2391-5bf8-cb15991d84c9" style="-webkit-transform:translate3d(0, 150px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-moz-transform:translate3d(0, 150px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-ms-transform:translate3d(0, 150px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);transform:translate3d(0, 150px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);opacity:0" class="heading3"><spring:message code="forex.wtSe-head"/></h1>
            <h1 data-w-id="0b4866aa-0e39-c155-6d1d-9ef0027c1e98" style="-webkit-transform:translate3d(0, 150px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-moz-transform:translate3d(0, 150px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-ms-transform:translate3d(0, 150px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);transform:translate3d(0, 150px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);opacity:0" class="heading4"><spring:message code="forex.wtSe-head2"/></h1>
            <div class="sub-txt3"><spring:message code="forex.wtSe-sub-txt"/></div>
          </div>
        </section>
        <section class="work-section">
          <div class="frame-5">
            <div class="le-area">
              <h1 data-w-id="8a4cff5f-ca62-3bd4-8cfb-1ec172a782a3" style="-webkit-transform:translate3d(0, 150px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-moz-transform:translate3d(0, 150px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-ms-transform:translate3d(0, 150px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);transform:translate3d(0, 150px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);opacity:0" class="heading3"><spring:message code="forex.workSe-head"/></h1>
              <h1 data-w-id="8a4cff5f-ca62-3bd4-8cfb-1ec172a782a5" style="-webkit-transform:translate3d(0, 150px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-moz-transform:translate3d(0, 150px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-ms-transform:translate3d(0, 150px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);transform:translate3d(0, 150px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);opacity:0" class="heading4"><spring:message code="forex.workSe-head2"/></h1>
              <div class="title-txt"><spring:message code="forex.workSe-subTitle"/></div>
              <div class="sub-txt4"><spring:message code="forex.workSe-sub-txt"/></div>
            </div>
            <div class="bg-box">
              <div class="work-box">
                <div class="spacing-3txt">CURRENCY PAIR</div>
                <h1 class="heading-28">AUDUSD</h1>
                <div class="bid-box">
                  <div class="bid-txt-box">
                    <div class="bid-small-txt">BID</div>
                    <h1 class="bid-big-txt">0.7718<span class="text-span-132">4</span></h1>
                  </div>
                  <div class="bid-txt-box right">
                    <div class="bid-small-txt">BID</div>
                    <h1 class="bid-big-txt green">0.7718<span class="text-span-132">5</span></h1>
                  </div>
                </div>
                <div class="spread-txt"><span class="text-span-133">SPREAD :</span> 0.1 Pips</div>
              </div>
            </div>
          </div>
        </section>
        <jsp:include page="../frame/startSection.jsp"></jsp:include>
        <section class="example-section">
          <div class="frame-7">
            <div class="txt-sub-title"><spring:message code="forex.exampleSe-title"/></div>
            <h1 class="heading4 _2"><spring:message code="forex.exampleSe-head"/></h1>
            <div class="trading-example-box">
              <div class="exmaple-div">
                <div class="example-txt"><spring:message code="forex.exampleSe-txt1"/></div>
                <div class="sub-txt5"><spring:message code="forex.exampleSe-sub-txt1"/></div>
                <div class="logo-small"></div>
              </div>
              <div class="exmaple-div">
                <div class="example-txt"><spring:message code="forex.exampleSe-txt2"/></div>
                <div class="sub-txt5 _2"><spring:message code="forex.exampleSe-sub-txt2"/></div>
                <div class="logo-small"></div>
              </div>
              <div class="exmaple-div">
                <div class="example-txt"><spring:message code="forex.exampleSe-txt3"/></div>
                <div class="sub-txt5 _2"><spring:message code="forex.exampleSe-sub-txt3"/></div>
                <div class="logo-small"></div>
              </div>
            </div>
          </div>
        </section>
      </form>
    </div>
  </div>
  <div class="bg-frame page2">
    <div class="spreads-section">
      <div id="spreads" class="frame-8 black">
        <div class="txt-sub-title"><spring:message code="forex.spreadsSe-stitle"/></div>
        <h1 class="heading4 _2"><spring:message code="forex.spreadsSe-head"/></h1>
        <div class="spreads-box">
          <div class="txt-box">
            <h1 class="account-status-txt _2">Super Zero<br>Account</h1>
            <h1 class="account-status-txt">Standard<br>Account</h1>
          </div>
          <div class="top-spreads">
            <div class="spreads-txt"><spring:message code="spreadsSe.top"/></div>
            <div class="spreads-txt _2"><spring:message code="spreadsSe.top2"/></div>
            <div class="spreads-txt _3"><spring:message code="spreadsSe.top3"/></div>
            <div class="spreads-txt _4"><spring:message code="spreadsSe.top4"/></div>
            <div class="spreads-txt _4"><spring:message code="spreadsSe.top5"/></div>
            <div class="spreads-txt _4"><spring:message code="spreadsSe.top6"/></div>
            <div class="spreads-txt _4"><spring:message code="spreadsSe.top7"/></div>
          </div>
          <div class="spreads-list">
            <div class="list">
              <div class="spreads-txt-sub"><strong>AUDUSD</strong></div>
              <div class="spreads-txt-sub _2">Australian Dollar vs Us Dollar</div>
              <div class="spreads-txt-sub _3">MT5</div>
              <div class="spreads-txt-sub _4"><strong>10</strong></div>
              <div class="spreads-txt-sub _4">12</div>
              <div class="spreads-txt-sub _4"><strong>0</strong></div>
              <div class="spreads-txt-sub _4">1</div>
            </div>
            <div class="list">
              <div class="spreads-txt-sub"><strong>EURUSD</strong></div>
              <div class="spreads-txt-sub _2">Euro vs Us Dollar</div>
              <div class="spreads-txt-sub _3">MT5</div>
              <div class="spreads-txt-sub _4"><strong>10</strong></div>
              <div class="spreads-txt-sub _4">12</div>
              <div class="spreads-txt-sub _4"><strong>0</strong></div>
              <div class="spreads-txt-sub _4">0</div>
            </div>
            <div class="list">
              <div class="spreads-txt-sub"><strong>GBPUSD</strong></div>
              <div class="spreads-txt-sub _2">Great Britain Pound vs Us Dollar</div>
              <div class="spreads-txt-sub _3">MT5</div>
              <div class="spreads-txt-sub _4"><strong>10</strong></div>
              <div class="spreads-txt-sub _4">14</div>
              <div class="spreads-txt-sub _4"><strong>0</strong></div>
              <div class="spreads-txt-sub _4">3</div>
            </div>
            <div class="list">
              <div class="spreads-txt-sub"><strong>NZDUSD</strong></div>
              <div class="spreads-txt-sub _2">New Zealand Dollar vs Us Dollar</div>
              <div class="spreads-txt-sub _3">MT5</div>
              <div class="spreads-txt-sub _4"><strong>19</strong></div>
              <div class="spreads-txt-sub _4">23</div>
              <div class="spreads-txt-sub _4"><strong>0</strong></div>
              <div class="spreads-txt-sub _4">3</div>
            </div>
            <div class="list">
              <div class="spreads-txt-sub"><strong>AUDJPY</strong></div>
              <div class="spreads-txt-sub _2">Australian Dollar vs Japanese Yen</div>
              <div class="spreads-txt-sub _3">MT5</div>
              <div class="spreads-txt-sub _4"><strong>19</strong></div>
              <div class="spreads-txt-sub _4">24</div>
              <div class="spreads-txt-sub _4"><strong>0</strong></div>
              <div class="spreads-txt-sub _4">4</div>
            </div>
            <div class="list">
              <div class="spreads-txt-sub"><strong>USDJPY</strong></div>
              <div class="spreads-txt-sub _2">Us Dollar vs Japanese Yen</div>
              <div class="spreads-txt-sub _3">MT5</div>
              <div class="spreads-txt-sub _4"><strong>10</strong></div>
              <div class="spreads-txt-sub _4">13</div>
              <div class="spreads-txt-sub _4"><strong>0</strong></div>
              <div class="spreads-txt-sub _4">2</div>
            </div>
            <div class="list">
              <div class="spreads-txt-sub"><strong>EURGBP</strong></div>
              <div class="spreads-txt-sub _2">Euro vs Great Britain Pound</div>
              <div class="spreads-txt-sub _3">MT5</div>
              <div class="spreads-txt-sub _4"><strong>19</strong></div>
              <div class="spreads-txt-sub _4">23</div>
              <div class="spreads-txt-sub _4"><strong>0</strong></div>
              <div class="spreads-txt-sub _4">3</div>
            </div>
            <div class="list">
              <div class="spreads-txt-sub"><strong>USDCAD</strong></div>
              <div class="spreads-txt-sub _2">Us Dollar vs Canadian Dollar</div>
              <div class="spreads-txt-sub _3">MT5</div>
              <div class="spreads-txt-sub _4"><strong>10</strong></div>
              <div class="spreads-txt-sub _4">13</div>
              <div class="spreads-txt-sub _4"><strong>0</strong></div>
              <div class="spreads-txt-sub _4">2</div>
            </div>
            <div class="list">
              <div class="spreads-txt-sub"><strong>USDCHF</strong></div>
              <div class="spreads-txt-sub _2">Us Dollar vs Swiss Franc</div>
              <div class="spreads-txt-sub _3">MT5</div>
              <div class="spreads-txt-sub _4"><strong>10</strong></div>
              <div class="spreads-txt-sub _4">15</div>
              <div class="spreads-txt-sub _4"><strong>0</strong></div>
              <div class="spreads-txt-sub _4">4</div>
            </div>
            <div class="list">
              <div class="spreads-txt-sub"><strong>AUDCAD</strong></div>
              <div class="spreads-txt-sub _2">Australian Dollar vs Canadian Dollar</div>
              <div class="spreads-txt-sub _3">MT5</div>
              <div class="spreads-txt-sub _4"><strong>19</strong></div>
              <div class="spreads-txt-sub _4">25</div>
              <div class="spreads-txt-sub _4"><strong>0</strong></div>
              <div class="spreads-txt-sub _4">5</div>
            </div>
            <div class="list">
              <div class="spreads-txt-sub"><strong>AUDCHF</strong></div>
              <div class="spreads-txt-sub _2">Australian Dollar vs Swiss Franc</div>
              <div class="spreads-txt-sub _3">MT5</div>
              <div class="spreads-txt-sub _4"><strong>19</strong></div>
              <div class="spreads-txt-sub _4">28</div>
              <div class="spreads-txt-sub _4"><strong>0</strong></div>
              <div class="spreads-txt-sub _4">8</div>
            </div>
            <div class="list">
              <div class="spreads-txt-sub"><strong>AUDNZD</strong></div>
              <div class="spreads-txt-sub _2">Australian Dollar vs New Zealand Dollar</div>
              <div class="spreads-txt-sub _3">MT5</div>
              <div class="spreads-txt-sub _4"><strong>19</strong></div>
              <div class="spreads-txt-sub _4">29</div>
              <div class="spreads-txt-sub _4"><strong>0</strong></div>
              <div class="spreads-txt-sub _4">9</div>
            </div>
            <div class="list">
              <div class="spreads-txt-sub"><strong>AUDSGD</strong></div>
              <div class="spreads-txt-sub _2">Australian Dollar vs Singapore Dollar</div>
              <div class="spreads-txt-sub _3">MT5</div>
              <div class="spreads-txt-sub _4"><strong>19</strong></div>
              <div class="spreads-txt-sub _4">30</div>
              <div class="spreads-txt-sub _4"><strong>0</strong></div>
              <div class="spreads-txt-sub _4">10</div>
            </div>
            <div class="list">
              <div class="spreads-txt-sub"><strong>CADCHF</strong></div>
              <div class="spreads-txt-sub _2">Canadian Dollar vs Swiss Franc</div>
              <div class="spreads-txt-sub _3">MT5</div>
              <div class="spreads-txt-sub _4"><strong>19</strong></div>
              <div class="spreads-txt-sub _4">28</div>
              <div class="spreads-txt-sub _4"><strong>0</strong></div>
              <div class="spreads-txt-sub _4">8</div>
            </div>
            <div class="list">
              <div class="spreads-txt-sub"><strong>CADJPY</strong></div>
              <div class="spreads-txt-sub _2">Canadian Dollar vs Japanese Yen</div>
              <div class="spreads-txt-sub _3">MT5</div>
              <div class="spreads-txt-sub _4"><strong>19</strong></div>
              <div class="spreads-txt-sub _4">29</div>
              <div class="spreads-txt-sub _4"><strong>0</strong></div>
              <div class="spreads-txt-sub _4">9</div>
            </div>
            <div class="list">
              <div class="spreads-txt-sub"><strong>CHFJPY</strong></div>
              <div class="spreads-txt-sub _2">Swiss Franc vs Japanese Yen</div>
              <div class="spreads-txt-sub _3">MT5</div>
              <div class="spreads-txt-sub _4"><strong>19</strong></div>
              <div class="spreads-txt-sub _4">38</div>
              <div class="spreads-txt-sub _4"><strong>0</strong></div>
              <div class="spreads-txt-sub _4">18</div>
            </div>
            <div class="list">
              <div class="spreads-txt-sub"><strong>EURAUD</strong></div>
              <div class="spreads-txt-sub _2">Euro vs Australian Dollar</div>
              <div class="spreads-txt-sub _3">MT5</div>
              <div class="spreads-txt-sub _4"><strong>19</strong></div>
              <div class="spreads-txt-sub _4">28</div>
              <div class="spreads-txt-sub _4"><strong>0</strong></div>
              <div class="spreads-txt-sub _4">8</div>
            </div>
            <div class="list">
              <div class="spreads-txt-sub"><strong>EURCAD</strong></div>
              <div class="spreads-txt-sub _2">Euro vs Canadian Dollar</div>
              <div class="spreads-txt-sub _3">MT5</div>
              <div class="spreads-txt-sub _4"><strong>19</strong></div>
              <div class="spreads-txt-sub _4">25</div>
              <div class="spreads-txt-sub _4"><strong>0</strong></div>
              <div class="spreads-txt-sub _4">5</div>
            </div>
            <div class="list">
              <div class="spreads-txt-sub"><strong>EURCHF</strong></div>
              <div class="spreads-txt-sub _2">Euro vs Swiss Franc</div>
              <div class="spreads-txt-sub _3">MT5</div>
              <div class="spreads-txt-sub _4"><strong>19</strong></div>
              <div class="spreads-txt-sub _4">26</div>
              <div class="spreads-txt-sub _4"><strong>0</strong></div>
              <div class="spreads-txt-sub _4">6</div>
            </div>
            <div class="list">
              <div class="spreads-txt-sub"><strong>EURCZK</strong></div>
              <div class="spreads-txt-sub _2">Euro vs Czech Koruna</div>
              <div class="spreads-txt-sub _3">MT5</div>
              <div class="spreads-txt-sub _4"><strong>61</strong></div>
              <div class="spreads-txt-sub _4">830</div>
              <div class="spreads-txt-sub _4"><strong>20</strong></div>
              <div class="spreads-txt-sub _4">790</div>
            </div>
            <div class="list">
              <div class="spreads-txt-sub"><strong>EURHUF</strong></div>
              <div class="spreads-txt-sub _2">Euro vs Hungarian Forint</div>
              <div class="spreads-txt-sub _3">MT5</div>
              <div class="spreads-txt-sub _4"><strong>5</strong></div>
              <div class="spreads-txt-sub _4">230</div>
              <div class="spreads-txt-sub _4"><strong>2</strong></div>
              <div class="spreads-txt-sub _4">226</div>
            </div>
            <div class="list">
              <div class="spreads-txt-sub"><strong>EURJPY</strong></div>
              <div class="spreads-txt-sub _2">Euro vs Japanise Yen</div>
              <div class="spreads-txt-sub _3">MT5</div>
              <div class="spreads-txt-sub _4"><strong>19</strong></div>
              <div class="spreads-txt-sub _4">26</div>
              <div class="spreads-txt-sub _4"><strong>0</strong></div>
              <div class="spreads-txt-sub _4">6</div>
            </div>
            <div class="list">
              <div class="spreads-txt-sub"><strong>EURNOK</strong></div>
              <div class="spreads-txt-sub _2">Euro vs Norwegian Kroner</div>
              <div class="spreads-txt-sub _3">MT5</div>
              <div class="spreads-txt-sub _4"><strong>86</strong></div>
              <div class="spreads-txt-sub _4">435</div>
              <div class="spreads-txt-sub _4"><strong>46</strong></div>
              <div class="spreads-txt-sub _4">395</div>
            </div>
            <div class="list">
              <div class="spreads-txt-sub"><strong>EURNZD</strong></div>
              <div class="spreads-txt-sub _2">Euro vs New Zealand Dollar</div>
              <div class="spreads-txt-sub _3">MT5</div>
              <div class="spreads-txt-sub _4"><strong>19</strong></div>
              <div class="spreads-txt-sub _4">38</div>
              <div class="spreads-txt-sub _4"><strong>0</strong></div>
              <div class="spreads-txt-sub _4">18</div>
            </div>
            <div class="list">
              <div class="spreads-txt-sub"><strong>EURPLN</strong></div>
              <div class="spreads-txt-sub _2">Euro vs Polish Zloty</div>
              <div class="spreads-txt-sub _3">MT5</div>
              <div class="spreads-txt-sub _4"><strong>39</strong></div>
              <div class="spreads-txt-sub _4">181</div>
              <div class="spreads-txt-sub _4"><strong>0</strong></div>
              <div class="spreads-txt-sub _4">141</div>
            </div>
            <div class="list">
              <div class="spreads-txt-sub"><strong>EURSEK</strong></div>
              <div class="spreads-txt-sub _2">Euro vs Swedish Krona</div>
              <div class="spreads-txt-sub _3">MT5</div>
              <div class="spreads-txt-sub _4"><strong>48</strong></div>
              <div class="spreads-txt-sub _4">350</div>
              <div class="spreads-txt-sub _4"><strong>9</strong></div>
              <div class="spreads-txt-sub _4">310</div>
            </div>
            <div class="list">
              <div class="spreads-txt-sub"><strong>EURSGD</strong></div>
              <div class="spreads-txt-sub _2">Euro vs Singapore Dollar</div>
              <div class="spreads-txt-sub _3">MT5</div>
              <div class="spreads-txt-sub _4"><strong>19</strong></div>
              <div class="spreads-txt-sub _4">30</div>
              <div class="spreads-txt-sub _4"><strong>0</strong></div>
              <div class="spreads-txt-sub _4">10</div>
            </div>
            <div class="list">
              <div class="spreads-txt-sub"><strong>EURTRY</strong></div>
              <div class="spreads-txt-sub _2">Euro vs Turkish Lira</div>
              <div class="spreads-txt-sub _3">MT5</div>
              <div class="spreads-txt-sub _4"><strong>431</strong></div>
              <div class="spreads-txt-sub _4">3580</div>
              <div class="spreads-txt-sub _4"><strong>392</strong></div>
              <div class="spreads-txt-sub _4">3818</div>
            </div>
            <div class="list">
              <div class="spreads-txt-sub"><strong>EURZAR</strong></div>
              <div class="spreads-txt-sub _2">Euro vs South African Rand</div>
              <div class="spreads-txt-sub _3">MT5</div>
              <div class="spreads-txt-sub _4"><strong>450</strong></div>
              <div class="spreads-txt-sub _4">819</div>
              <div class="spreads-txt-sub _4"><strong>50</strong></div>
              <div class="spreads-txt-sub _4">419</div>
            </div>
            <div class="list">
              <div class="spreads-txt-sub"><strong>GBPAUD</strong></div>
              <div class="spreads-txt-sub _2">Great Britain Pound vs Australian Dollar</div>
              <div class="spreads-txt-sub _3">MT5</div>
              <div class="spreads-txt-sub _4"><strong>19</strong></div>
              <div class="spreads-txt-sub _4">30</div>
              <div class="spreads-txt-sub _4"><strong>0</strong></div>
              <div class="spreads-txt-sub _4">10</div>
            </div>
            <div class="list">
              <div class="spreads-txt-sub"><strong>GBPCAD</strong></div>
              <div class="spreads-txt-sub _2">Great Britain Pound vs Canadian Dollar</div>
              <div class="spreads-txt-sub _3">MT5</div>
              <div class="spreads-txt-sub _4"><strong>19</strong></div>
              <div class="spreads-txt-sub _4">29</div>
              <div class="spreads-txt-sub _4"><strong>0</strong></div>
              <div class="spreads-txt-sub _4">9</div>
            </div>
            <div class="list">
              <div class="spreads-txt-sub"><strong>GBPCHF</strong></div>
              <div class="spreads-txt-sub _2">Great Britain Pound vs Swiss Franc</div>
              <div class="spreads-txt-sub _3">MT5</div>
              <div class="spreads-txt-sub _4"><strong>19</strong></div>
              <div class="spreads-txt-sub _4">34</div>
              <div class="spreads-txt-sub _4"><strong>0</strong></div>
              <div class="spreads-txt-sub _4">14</div>
            </div>
            <div class="list">
              <div class="spreads-txt-sub"><strong>GBPJPY</strong></div>
              <div class="spreads-txt-sub _2">Great Britain Pound vs Japanese Yen</div>
              <div class="spreads-txt-sub _3">MT5</div>
              <div class="spreads-txt-sub _4"><strong>19</strong></div>
              <div class="spreads-txt-sub _4">30</div>
              <div class="spreads-txt-sub _4"><strong>0</strong></div>
              <div class="spreads-txt-sub _4">10</div>
            </div>
            <div class="list">
              <div class="spreads-txt-sub"><strong>GBPNZD</strong></div>
              <div class="spreads-txt-sub _2">Great Britain Pound vs New Zealand Dollar</div>
              <div class="spreads-txt-sub _3">MT5</div>
              <div class="spreads-txt-sub _4"><strong>26</strong></div>
              <div class="spreads-txt-sub _4">55</div>
              <div class="spreads-txt-sub _4"><strong>7</strong></div>
              <div class="spreads-txt-sub _4">35</div>
            </div>
            <div class="list">
              <div class="spreads-txt-sub"><strong>GBPSEK</strong></div>
              <div class="spreads-txt-sub _2">Great Britain Pound vs Swedish Krona</div>
              <div class="spreads-txt-sub _3">MT5</div>
              <div class="spreads-txt-sub _4"><strong>215</strong></div>
              <div class="spreads-txt-sub _4">608</div>
              <div class="spreads-txt-sub _4"><strong>14</strong></div>
              <div class="spreads-txt-sub _4">408</div>
            </div>
            <div class="list">
              <div class="spreads-txt-sub"><strong>GBPSGD</strong></div>
              <div class="spreads-txt-sub _2">Great Britain Pound vs Singapore Dollar</div>
              <div class="spreads-txt-sub _3">MT5</div>
              <div class="spreads-txt-sub _4"><strong>19</strong></div>
              <div class="spreads-txt-sub _4">36</div>
              <div class="spreads-txt-sub _4"><strong>0</strong></div>
              <div class="spreads-txt-sub _4">16</div>
            </div>
            <div class="list">
              <div class="spreads-txt-sub"><strong>NZDCAD</strong></div>
              <div class="spreads-txt-sub _2">New Zealand Dollar vs Canadian Dollar</div>
              <div class="spreads-txt-sub _3">MT5</div>
              <div class="spreads-txt-sub _4"><strong>19</strong></div>
              <div class="spreads-txt-sub _4">29</div>
              <div class="spreads-txt-sub _4"><strong>0</strong></div>
              <div class="spreads-txt-sub _4">9</div>
            </div>
            <div class="list">
              <div class="spreads-txt-sub"><strong>NZDCHF</strong></div>
              <div class="spreads-txt-sub _2">New Zealand Dollar vs Swiss Franc</div>
              <div class="spreads-txt-sub _3">MT5</div>
              <div class="spreads-txt-sub _4"><strong>21</strong></div>
              <div class="spreads-txt-sub _4">29</div>
              <div class="spreads-txt-sub _4"><strong>2</strong></div>
              <div class="spreads-txt-sub _4">9</div>
            </div>
            <div class="list">
              <div class="spreads-txt-sub"><strong>NZDJPY</strong></div>
              <div class="spreads-txt-sub _2">New Zealand Dollar vs Japanese Yen</div>
              <div class="spreads-txt-sub _3">MT5</div>
              <div class="spreads-txt-sub _4"><strong>19</strong></div>
              <div class="spreads-txt-sub _4">28</div>
              <div class="spreads-txt-sub _4"><strong>0</strong></div>
              <div class="spreads-txt-sub _4">8</div>
            </div>
            <div class="list">
              <div class="spreads-txt-sub"><strong>NZDSGD</strong></div>
              <div class="spreads-txt-sub _2">New Zealand Dollar vs Singapore Dollar</div>
              <div class="spreads-txt-sub _3">MT5</div>
              <div class="spreads-txt-sub _4"><strong>21</strong></div>
              <div class="spreads-txt-sub _4">34</div>
              <div class="spreads-txt-sub _4"><strong>2</strong></div>
              <div class="spreads-txt-sub _4">14</div>
            </div>
            <div class="list">
              <div class="spreads-txt-sub"><strong>USDBRL</strong></div>
              <div class="spreads-txt-sub _2">Us Dollar vs Brazilian Real</div>
              <div class="spreads-txt-sub _3">MT5</div>
              <div class="spreads-txt-sub _4"><strong>415</strong></div>
              <div class="spreads-txt-sub _4">528</div>
              <div class="spreads-txt-sub _4"><strong>15</strong></div>
              <div class="spreads-txt-sub _4">128</div>
            </div>
            <div class="list">
              <div class="spreads-txt-sub"><strong>USDCNH</strong></div>
              <div class="spreads-txt-sub _2">Us Dollar vs Chinese Yuan</div>
              <div class="spreads-txt-sub _3">MT5</div>
              <div class="spreads-txt-sub _4"><strong>1</strong></div>
              <div class="spreads-txt-sub _4">4</div>
              <div class="spreads-txt-sub _4"><strong>0</strong></div>
              <div class="spreads-txt-sub _4">2</div>
            </div>
            <div class="list">
              <div class="spreads-txt-sub"><strong>USDCZK</strong></div>
              <div class="spreads-txt-sub _2">US Dollar vs Czech Koruna</div>
              <div class="spreads-txt-sub _3">MT5</div>
              <div class="spreads-txt-sub _4"><strong>399</strong></div>
              <div class="spreads-txt-sub _4">936</div>
              <div class="spreads-txt-sub _4"><strong>0</strong></div>
              <div class="spreads-txt-sub _4">536</div>
            </div>
            <div class="list">
              <div class="spreads-txt-sub"><strong>USDDKK</strong></div>
              <div class="spreads-txt-sub _2">US Dollar vs Danish Krone</div>
              <div class="spreads-txt-sub _3">MT5</div>
              <div class="spreads-txt-sub _4"><strong>199</strong></div>
              <div class="spreads-txt-sub _4">232</div>
              <div class="spreads-txt-sub _4"><strong>0</strong></div>
              <div class="spreads-txt-sub _4">32</div>
            </div>
            <div class="list">
              <div class="spreads-txt-sub"><strong>USDHKD</strong></div>
              <div class="spreads-txt-sub _2">Us Dollar vs Hong Kong Dollar</div>
              <div class="spreads-txt-sub _3">MT5</div>
              <div class="spreads-txt-sub _4"><strong>10</strong></div>
              <div class="spreads-txt-sub _4">24</div>
              <div class="spreads-txt-sub _4"><strong>0</strong></div>
              <div class="spreads-txt-sub _4">13</div>
            </div>
            <div class="list">
              <div class="spreads-txt-sub"><strong>USDHUF</strong></div>
              <div class="spreads-txt-sub _2">US Dollar vs Hungarian Forint</div>
              <div class="spreads-txt-sub _3">MT5</div>
              <div class="spreads-txt-sub _4"><strong>4</strong></div>
              <div class="spreads-txt-sub _4">201</div>
              <div class="spreads-txt-sub _4"><strong>4</strong></div>
              <div class="spreads-txt-sub _4">201</div>
            </div>
            <div class="list">
              <div class="spreads-txt-sub"><strong>USDKRW</strong></div>
              <div class="spreads-txt-sub _2">US Dollar vs South Korean won</div>
              <div class="spreads-txt-sub _3">MT5</div>
              <div class="spreads-txt-sub _4"><strong>399</strong></div>
              <div class="spreads-txt-sub _4">612</div>
              <div class="spreads-txt-sub _4"><strong>0</strong></div>
              <div class="spreads-txt-sub _4">215</div>
            </div>
            <div class="list">
              <div class="spreads-txt-sub"><strong>USDMXN</strong></div>
              <div class="spreads-txt-sub _2">US Dollar vs Mexican Peso</div>
              <div class="spreads-txt-sub _3">MT5</div>
              <div class="spreads-txt-sub _4"><strong>399</strong></div>
              <div class="spreads-txt-sub _4">635</div>
              <div class="spreads-txt-sub _4"><strong>0</strong></div>
              <div class="spreads-txt-sub _4">235</div>
            </div>
            <div class="list">
              <div class="spreads-txt-sub"><strong>USDNOK</strong></div>
              <div class="spreads-txt-sub _2">Us Dollar vs Norwegian Krone</div>
              <div class="spreads-txt-sub _3">MT5</div>
              <div class="spreads-txt-sub _4"><strong>399</strong></div>
              <div class="spreads-txt-sub _4">698</div>
              <div class="spreads-txt-sub _4"><strong>0</strong></div>
              <div class="spreads-txt-sub _4">298</div>
            </div>
            <div class="list">
              <div class="spreads-txt-sub"><strong>USDPLN</strong></div>
              <div class="spreads-txt-sub _2">Us Dollar vs Polish Zloty</div>
              <div class="spreads-txt-sub _3">MT5</div>
              <div class="spreads-txt-sub _4"><strong>39</strong></div>
              <div class="spreads-txt-sub _4">124</div>
              <div class="spreads-txt-sub _4"><strong>0</strong></div>
              <div class="spreads-txt-sub _4">84</div>
            </div>
            <div class="list">
              <div class="spreads-txt-sub"><strong>USDSEK</strong></div>
              <div class="spreads-txt-sub _2">Us Dollar vs Swedish Krona</div>
              <div class="spreads-txt-sub _3">MT5</div>
              <div class="spreads-txt-sub _4"><strong>399</strong></div>
              <div class="spreads-txt-sub _4">589</div>
              <div class="spreads-txt-sub _4"><strong>0</strong></div>
              <div class="spreads-txt-sub _4">189</div>
            </div>
            <div class="list">
              <div class="spreads-txt-sub"><strong>USDSGD</strong></div>
              <div class="spreads-txt-sub _2">Us Dollar vs Singapore Dollar</div>
              <div class="spreads-txt-sub _3">MT5</div>
              <div class="spreads-txt-sub _4"><strong>10</strong></div>
              <div class="spreads-txt-sub _4">22</div>
              <div class="spreads-txt-sub _4"><strong>0</strong></div>
              <div class="spreads-txt-sub _4">11</div>
            </div>
            <div class="list">
              <div class="spreads-txt-sub"><strong>USDTRY</strong></div>
              <div class="spreads-txt-sub _2">Us Dollar vs Turkey Lira</div>
              <div class="spreads-txt-sub _3">MT5</div>
              <div class="spreads-txt-sub _4"><strong>1482</strong></div>
              <div class="spreads-txt-sub _4">3737</div>
              <div class="spreads-txt-sub _4"><strong>1082</strong></div>
              <div class="spreads-txt-sub _4">3336</div>
            </div>
            <div class="list">
              <div class="spreads-txt-sub"><strong>USDZAR</strong></div>
              <div class="spreads-txt-sub _2">Us Dollar vs South African Rand</div>
              <div class="spreads-txt-sub _3">MT5</div>
              <div class="spreads-txt-sub _4"><strong>99</strong></div>
              <div class="spreads-txt-sub _4">644</div>
              <div class="spreads-txt-sub _4"><strong>0</strong></div>
              <div class="spreads-txt-sub _4">544</div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="hedging-section">
      <div class="frame-8">
        <div class="txt-sub-title">TROYMARKET</div>
        <h1 class="heading4 _2"><spring:message code="forex.headingSe-head"/></h1>
        <div class="flex-d">
          <div class="txt-box2">
            <div class="sub-txt6"><spring:message code="forex.headingSe-subtxt1"/><br></div>
          </div>
          <div class="txt-box2">
            <div class="sub-txt6"><spring:message code="forex.headingSe-subtxt2"/><br></div>
          </div>
        </div>
      </div>
    </div>
    <jsp:include page="../frame/successSection.jsp"></jsp:include>
    <jsp:include page="../frame/serviceSection.jsp"></jsp:include>
  </div>
  <jsp:include page="../frame/riskfooter.jsp"></jsp:include>
  <jsp:include page="../frame/footer.jsp"></jsp:include>
</body>
</html>