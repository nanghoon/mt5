<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

<div class="header">
	 <div class="header-top">
	 	<div class="header-frame">
            <div class="h-right">
              <a href="https://clientportal.troymarketworld.com/login" target="_blank" class="userlogin-btn w-inline-block">
                <div class="user-ltxt"><spring:message code="menu.login"/></div>
              </a>
              <select onchange="changeLang(this)" class="select-field w-select">
			    <option value="en" style="color:black;" ${lang == 'en' ? 'selected' : ''}>EN</option>
			    <option value="ko" style="color:black;" ${lang == 'ko' ? 'selected' : ''}>KO</option>
			    <option value="pt" style="color:black;" ${lang == 'pt' ? 'selected' : ''}>PT</option>
			    <option value="mn" style="color:black;" ${lang == 'mn' ? 'selected' : ''}>MN</option>
			    <option value="ar" style="color:black;" ${lang == 'ar' ? 'selected' : ''}>AR</option>
			    <option value="pk" style="color:black;" ${lang == 'pk' ? 'selected' : ''}>PK</option>
			    <option value="cn" style="color:black;" ${lang == 'cn' ? 'selected' : ''}>CN</option>
			    <option value="tr" style="color:black;" ${lang == 'tr' ? 'selected' : ''}>TR</option>
			    <option value="ae" style="color:black;" ${lang == 'ae' ? 'selected' : ''}>AE</option>
			  </select>
            </div>
	 	</div>
	</div>
	<div class="header-main">
		<a href="/main" aria-current="page" class="w-inline-block w--current">
			<div class="logo black"></div>
		</a>
		<div class="menu">
			<a data-w-id="12b4aa16-2e3c-2b04-6683-0324a1fb6b35" href="#" class="close-btn w-button"></a>
			<div class="drop-menu">
				<a href="/company" class="menu_btn w-button"><spring:message code="menu.company"/></a> 
			</div>
			<div class="drop-menu">
				<a href="#" class="menu_btn w-button"><spring:message code="menu.trading"/></a>
				<div class="drop-list">
					<div>Trading</div>
					<a href="/trading/forex" class="drop-menu-link w-inline-block">
						<div>Forex</div>
					</a>
					<a href="/trading/commodotles" class="drop-menu-link w-inline-block">
						<div>COMMODOTLES</div>
					</a>
					<a href="/trading/metals" class="drop-menu-link w-inline-block">
						<div>METALS</div>
					</a>
					<a href="/trading/indices" class="drop-menu-link w-inline-block">
						<div>INDICES</div>
					</a>
					<a href="/trading/shareCFDS" class="drop-menu-link w-inline-block">
						<div>SHARE CFDS</div>
					</a>
					<a href="/trading/crypto" class="drop-menu-link w-inline-block">
						<div>CRYPTO</div>
					</a>
					<a href="/trading/etf" class="drop-menu-link w-inline-block">
						<div>ETF</div>
					</a>
				</div>
			</div>
			<div class="drop-menu">
				<a href="/socialTrading" class="menu_btn w-button"><spring:message code="menu.socialTrading"/></a> 
			</div>
			<div class="drop-menu">
				<a href="#" class="menu_btn w-button"><spring:message code="menu.troyTool"/></a>
				<div class="drop-list">
					<div>Troy-Tool</div>
					<a href="/tool/pipCalculator" class="drop-menu-link w-inline-block">
						<div>PIP Calculator</div>
					</a>
					<a href="/tool/forexVps" class="drop-menu-link w-inline-block">
						<div>Forex VPS</div>
					</a>
					<a href="/tool/economicCalender" class="drop-menu-link w-inline-block">
						<div>Economic Calendar</div>
					</a>
				</div>
			</div>
			<div class="drop-menu">
				<a href="/metaTrader5" class="menu_btn w-button"><spring:message code="menu.metaTrader"/></a> 
			</div>
			<div class="drop-menu">
				<a href="#" class="menu_btn w-button"><spring:message code="menu.csCenter"/></a>
				<div class="drop-list">
					<div>CS Center</div>
					<a href="/cs/notice" class="drop-menu-link w-inline-block">
						<div>Notice</div>
					</a>
					<a href="/cs/cs" class="drop-menu-link w-inline-block">
						<div>24/5 support</div>
					</a>
					<a href="/cs/contactUS" class="drop-menu-link w-inline-block">
						<div>Get in touch</div>
					</a>
					<a href="/cs/qna" class="drop-menu-link w-inline-block">
						<div>QNA</div>
					</a>
				</div>
			</div>
			<div class="connected-btn-box">
				<a href="#" class="connected-btn w-button"><spring:message code="menu.connected"/></a>
				<a href="#" class="connected-btn on w-button"><spring:message code="menu.connectedWallet"/></a>
			</div>
		</div>
		<a href="#" class="mobile-menu invert w-button"></a>
	</div>	
</div>

<script>
	function changeLang(selectElement) {
	    const selectedLang = selectElement.value;
	    
	    // 현재 전체 URL에서 도메인과 포트까지 포함하여 baseUrl 구성
	    const baseUrl = window.location.protocol + '//' + window.location.host;
	    
	    // 현재 페이지 경로 가져오기
	    let currentPath = window.location.pathname;
	    currentPath = currentPath.replace(/^\/|\/$/g, '');
	    
	    // 현재 경로를 분리
	    const pathParts = currentPath.split('/');
	    console.log('Current path parts:', pathParts);
	    
	    // 언어 코드를 제외한 나머지 경로 유지
	    const remainingPath = pathParts.slice(1).join('/');
	    
	    // 새로운 URL 생성
	    const newUrl = baseUrl + '/' + selectedLang + (remainingPath ? '/' + remainingPath : '');
	    console.log('New URL:', newUrl);
	    
	    // 페이지 이동
	    window.location.href = newUrl;
	}
	
	

</script>