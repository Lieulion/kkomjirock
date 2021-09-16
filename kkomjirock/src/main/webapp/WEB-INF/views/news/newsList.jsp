<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>board</title>
	<!--  BootStrap & etc -->
	<%@ include file="../include/header.jsp" %>	
	<!-- jQuery -->	
	
	
	<style>
		*{
		font-family: sans-serif;
		}
		
		body{
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
	</style>
	<script>
		$(document).on('click', '#btnWriteForm', function(e){
			e.preventDefault();
			location.href = "${Path}/news/newsForm";
		});
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
										<td><c:out value="${list.title}"/></td>
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
		</div>
	</article>

</body>
</html>



