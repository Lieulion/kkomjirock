<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
	<title>Home</title>
	<%@ include file="./include/header.jsp" %>	
	<link rel="stylesheet" href="../resources/css/home.css">
	
</head>
<body>
	<%@ include file="./include/topMenu.jsp" %>
	
	<div class="container">
	
		<section id="home" class="section1">
		<div data-anchor="home" class="home-page">
			<img class="fullLogo" src="../resources/img/frontLogoFull.png">
		</div>
		</section>
		<section id="about" class="section2">
			<div data-anchor="about" id="about" class="about-page">
				<h1><b>꼼지락 (KkomjiRock)</b></h1>
				<br>
				<img class="Logo" src="../resources/img/Logo.jpg">
				<div class="text">
				<br><br>
					<span>2020년 3월에 만들어져 총 16명의 구성원으로 이루어졌으며, 수인음악 레이블 매그너스 레코즈의 프로듀싱을 받는 대한민국 최초의 퍼슈트 예술단체입니다. <br><br>
						퍼슈트의 캐릭터를 연기하는 액팅(Acting) 을 함과 동시에 캐릭터에 맞는 다양한 음악 활동을 접목시키는 행위예술활동을 기획하고 진행하고 있습니다.<br><br>
						현재는 '한 발짝, 꼼지락' 이라는 제목으로 퍼슈팅 상태에서 음악 무대를 진행하는 실험적인 크로스오버 공연을 준비중입니다.<br><br>
						많은 멤버 수만큼 음악에서도 다양한 장르의 곡들을 소화할려고 노력하고 있으며, 퍼슈팅을 기반으로 공연상황에서 디스코, 락, 메탈, 발라드, 인디 등 다양한 장르들의 음악을 접목하려 하고 있습니다.
					</span>
				</div>	
				<br><hr><br>
				<h1><b>BAND MEMBER</b></h1>
				<br>
				<img class="member" src="../resources/img/bandMember.jpg">
		</div>
		</section>

	</div>

</body>
</html>