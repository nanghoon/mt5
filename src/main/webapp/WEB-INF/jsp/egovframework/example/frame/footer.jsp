<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=66fa23fa604f581407c85fa7" type="text/javascript" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
 <script src="/wf/js/webflow.js" type="text/javascript"></script>
 <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
 
 <script>
	//메뉴
	document.addEventListener('DOMContentLoaded', () => {
	  //요소 가져오기
	  const dropMenus    = document.querySelectorAll('.drop-menu');
	  const menus        = document.querySelectorAll('.menu');
	  const mobileToggle = document.querySelector('.mobile-menu');
	  const closeBtns    = document.querySelectorAll('.close-btn');
	
	  // 화면 크기에 따라 메뉴 보이기/숨기기, drop-list 초기 숨김
	  function updateMenus() {
	    const isMobile = window.innerWidth <= 768;
	    menus.forEach(menu => {
	      menu.style.display = isMobile ? 'none' : 'flex';
	      const list = menu.querySelector('.drop-list');
	      if (list) list.style.display = 'none';
	    });
	  }
	
	  // 1) 데스크탑: .drop-menu 자체에만 hover 걸기
	  dropMenus.forEach(menu => {
	    const list = menu.querySelector('.drop-list');
	    if (!list) return;
	    // 초기 숨김
	    list.style.display = 'none';
	
	    menu.addEventListener('mouseenter', () => {
	      if (window.innerWidth > 768) {
	        list.style.display = 'flex';
	      }
	    });
	    menu.addEventListener('mouseleave', () => {
	      if (window.innerWidth > 768) {
	        list.style.display = 'none';
	      }
	    });
	
	    // 2) 모바일: drop-menu 클릭 → 해당 리스트 토글
	    menu.addEventListener('click', e => {
	      if (window.innerWidth <= 768) {
	        list.style.display = list.style.display === 'flex' ? 'none' : 'flex';
	        e.stopPropagation();
	      }
	    });
	  });
	
	  // 3) 모바일 햄버거 버튼: 전체 .menu 토글
	  if (mobileToggle) {
	    mobileToggle.addEventListener('click', () => {
	      if (window.innerWidth <= 768) {
	        menus.forEach(menu => {
	          menu.style.display = menu.style.display === 'flex' ? 'none' : 'flex';
	        });
	      }
	    });
	  }
	
	  // 4) close-btn 클릭 시 모든 메뉴 숨기기
	  closeBtns.forEach(btn => {
	    btn.addEventListener('click', () => {
	      menus.forEach(menu => {
	        menu.style.display = 'none';
	      });
	    });
	  });
	
	  // 초기화 및 리사이즈 대응
	  updateMenus();
	  window.addEventListener('resize', updateMenus);
	});

	 
 </script>