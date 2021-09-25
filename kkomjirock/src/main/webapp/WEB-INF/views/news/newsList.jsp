<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>board</title>
	<!--  BootStrap & etc -->
	<%@ include file="../include/header.jsp" %>	
	
	
	<style>
		*{
		font-family: sans-serif;
		}
		
		body{
			padding-top: 70px;

			padding-bottom: 30px;



		    background: rgb(13, 13, 13) !important;
		}
		th{
			color:#fff;
		}
		.container{
			margin-top:100px;
		}
		.table-responsive{
			background-color:rgb(27, 27, 27);
		}
		#newsTable{
			color:#fff;
		}
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
	<script>
	//이전 버튼 이벤트
	function fn_prev(page, range, rangeSize) {

			var page = ((range - 2) * rangeSize) + 1;
			var range = range - 1;
			var url = "${Path}/news/getBoardList";
			
			url = url + "?page=" + page;
			url = url + "&range=" + range;
			location.href = url;

		}



	  //페이지 번호 클릭
		function fn_pagination(page, range, rangeSize, searchType, keyword) {

			var url = "${Path}/news/getBoardList";

			url = url + "?page=" + page;
			url = url + "&range=" + range;
			location.href = url;	
		}



		//다음 버튼 이벤트
		function fn_next(page, range, rangeSize) {

			var page = parseInt((range * rangeSize)) + 1;
			var range = parseInt(range) + 1;
			var url = "${Path}/news/getBoardList";
			
			url = url + "?page=" + page;
			url = url + "&range=" + range;
			location.href = url;
		}

		$(document).on('click', '#btnWriteForm', function(e){
			e.preventDefault();
			location.href = "${Path}/news/newsForm";
		});
		
		function fn_contentView(bid){
			var url = "${Path}/news/getBoardContent";
			url = url + "?bid="+bid;
			location.href = url;

		}



	</script>



</head>
<body>
	<%@ include file="../include/topMenu.jsp" %>

	<article>
		<div class="container">
			<div class="table-responsive">
				<table class="table table-sm" id=newsTable>
	
					<colgroup>
						<col style="width:5%;" />
						<col style="width:auto;" />
						<col style="width:15%;" />
						<col style="width:10%;" />
						<col style="width:10%;" />
					</colgroup>
					
					<thead>
						<tr>
							<th>NO</th>
							<th>글제목</th>
							<th>작성자</th>
							<th>조회수</th>
							<th>작성일</th>
						</tr>
					</thead>
					
					<tbody>
						<c:choose>
							<c:when test="${empty newsList }" >
								<tr><td colspan="5" align="center">데이터가 없습니다.</td></tr>
							</c:when> 
							
							<c:when test="${!empty newsList}">
								<c:forEach var="list" items="${newsList}">
									<tr>
										<td><c:out value="${list.bid}"/></td>
										<td>
											<a href="#" onClick="fn_contentView(<c:out value="${list.bid}"/>)">										
												<c:out value="${list.title}"/>
											</a>
										</td>	
										<td><c:out value="${list.reg_id}"/></td>
										<td><c:out value="${list.view_cnt}"/></td>
										<td><c:out value="${list.reg_dt}"/></td>
										</tr>



								</c:forEach>
							</c:when>
						</c:choose>
					</tbody>
				</table>
			</div>
			<div >
				<button type="button" class="btn btn-sm btn-primary" id="btnWriteForm">글쓰기</button>
			</div>
			<!-- pagination{s} -->

	<div id="paginationBox">
		<ul class="pagination">
			<c:if test="${pagination.prev}">
				<li class="page-item"><a class="page-link" href="#" onClick="fn_prev('${pagination.page}', '${pagination.range}', '${pagination.rangeSize}')">Previous</a></li>
			</c:if>

			<c:forEach begin="${pagination.startPage}" end="${pagination.endPage}" var="idx">
				<li class="page-item <c:out value="${pagination.page == idx ? 'active' : ''}"/> "><a class="page-link" href="#" onClick="fn_pagination('${idx}', '${pagination.range}', '${pagination.rangeSize}')"> ${idx} </a></li>
			</c:forEach>
			
			<c:if test="${pagination.next}">
				<li class="page-item"><a class="page-link" href="#" onClick="fn_next('${pagination.range}', '${pagination.range}', '${pagination.rangeSize}')" >Next</a></li>
			</c:if>
			
		</ul>
	</div>
	<!-- pagination{e} -->



		</div>
	</article>

</body>
</html>



