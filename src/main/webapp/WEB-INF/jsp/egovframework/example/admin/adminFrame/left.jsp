<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//Dth HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dth">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
			<span class="sr-only">Toggle navigation</span> 
			<span class="icon-bar"></span> 
			<span class="icon-bar"></span> 
			<span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="/admin/setMain.do?idx=4">관리자</a>
	</div>
	<ul class="nav navbar-top-links navbar-right">
		<li class="dropdown">
			<li><a href="/admin/logout.do?lang=en"><i class="fa fa-sign-out fa-fw"></i> Logout</a></li>
		</li>
	</ul>
	<div class="navbar-default sidebar" role="navigation">
		<div class="sidebar-nav navbar-collapse">
			<ul class="nav" id="side-menu">
				<li>
					<a href="javascript:void(0)"><i class="fa fa-caret-right fa-fw"></i> 공지사항<span class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li><a href="/admin/notice/list.do?lang=en"> en 공지사항</a></li>
						<li><a href="/admin/notice/list.do?lang=ko"> ko 공지사항</a></li>
						<li><a href="/admin/notice/list.do?lang=pt"> pt 공지사항</a></li>
						<li><a href="/admin/notice/list.do?lang=mn"> mn 공지사항</a></li>
						<li><a href="/admin/notice/list.do?lang=ar"> ar 공지사항</a></li>
						<li><a href="/admin/notice/list.do?lang=pk"> pk 공지사항</a></li>
						<li><a href="/admin/notice/list.do?lang=cn"> cn 공지사항</a></li>
						<li><a href="/admin/notice/list.do?lang=tr"> tr 공지사항</a></li>
						<li><a href="/admin/notice/list.do?lang=ae"> ae 공지사항</a></li>
					</ul>
				</li>
			</ul>
			<ul class="nav" id="side-menu">
				<li>
					<a href="/admin/popup.do"><i class="fa fa-caret-right fa-fw"></i> 팝업 공지 세팅</a>
				</li>
			</ul>
		</div>
	</div>
</nav>
</body>
</html>