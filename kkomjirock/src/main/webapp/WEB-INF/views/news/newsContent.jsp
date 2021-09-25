<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>board</title>
	<!--  BootStrap & etc -->
	<%@ include file="../include/header.jsp" %>	
	
	<script>
	//목록으로 이동
	$(document).on('click', '#btnList', function(){

		location.href = "${Path}/news/newsList";

	});
	//수정 버튼 클릭 이벤트
	$(document).on('click', '#btnUpdate', function(){

		var url = "${Path}/news/editForm";
		url = url + "?bid="+${boardContent.bid}; //어떤 글을 편집해야하는지 확인하기 위한 인자.
		url = url + "&mode=edit";	//신규입력인지 수정인지 구분하기 위한 인자.
		location.href = url;
	});
	
	//삭제 버튼 클릭
	$(document).on('click', '#btnDelete', function(){
	    var url = "${Path}/news/deleteBoard";
	    url = url + "?bid=" + ${boardContent.bid};
			location.href = url;
		});


</script>

<style>
		.board_title {
			font-weight : 700;
			font-size : 22pt;
			margin : 10pt;
		}
		
		.board_info_box {
			color : #6B6B6B;
			margin : 10pt;
		}
		
		.board_author {
			font-size : 10pt;
			margin-right : 10pt;
		}
		
		.board_date {
			font-size : 10pt;
		}
		
		.board_content {
			color : #444343;
			font-size : 12pt;
			margin : 10pt;
		}
		
		.board_tag {
			font-size : 11pt;
			margin : 10pt;
			padding-bottom : 10pt;
		
		}

	</style>
</head>
<body>
	<%@ include file="../include/topMenu.jsp" %>
	
	<article>
		<div class="container" role="main">
			<h2>board Content</h2>

			<div class="bg-white rounded shadow-sm">
				<div class="board_title"><c:out value="${boardContent.title}"/></div>
				<div class="board_info_box">
					<span class="board_author"><c:out value="${boardContent.reg_id}"/>,</span><span class="board_date"><c:out value="${boardContent.reg_dt}"/></span>
				</div>
				<div class="board_content">${boardContent.content}</div>
				<div class="board_tag">TAG : <c:out value="${boardContent.tag}"/></div>
			</div>

			

			<div style="margin-top : 20px">
				<button type="button" class="btn btn-sm btn-primary" id="btnUpdate">수정</button>
				<button type="button" class="btn btn-sm btn-primary" id="btnDelete">삭제</button>
				<button type="button" class="btn btn-sm btn-primary" id="btnList">목록</button>
			</div>
		</div>

		

	</article>




</body>
</html>