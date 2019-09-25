<%@page import="kr.or.ddit.user.model.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">

<title>Jsp-basicLib</title>
<%@include file="/WEB-INF/views/commonJsp/basicLib.jsp" %>
<script>
// 문서 로딩이 완료되고 나서
$(document).ready(function(){
	
	// 사용자 정보 클릭시 이벤트 핸들러
	$(".postTr").on("click", function(){
		console.log("userTr click");
		
		var tdText = $($(this).children()[1]).text();
		console.log("tdText : " + tdText);
		
		var inputValue = $(this).find("input").val();
		console.log("inputValue : " + inputValue);
		
		var dataValue = $(this).data("postseq");
		console.log("dataValue : " + dataValue);
		
		// input 태그에 값 설정
		$("#postseq").val(dataValue);
		
		// form 태그이용 전송
		console.log("serialize : "+$("#frm").serialize());
		
	});
});
</script>
</head>

<body>

<!-- header -->
<%@include file="/WEB-INF/views/commonJsp/header.jsp" %>
<div class="container-fluid">
		<div class="row">
			
<div class="col-sm-3 col-md-2 sidebar">
	<%@include file="/WEB-INF/views/commonJsp/left.jsp" %>
</div>
<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
				
<div class="row">
	<div class="col-sm-8 blog-main">
		<div class="table-responsive">
		<h2>${boardNm }</h2>
			<table class="table table-striped">
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일시</th>
				</tr>
				<c:forEach items="${postList }" var="post" varStatus="loop">
					<tr class="postTr" data-postseq="${post.postseq }">
						<td>${(pageVo.page-1) * pageVo.pagesize + loop.count }</td>
						<td>
						<c:forEach begin="0" end="${fn:substring(post.posttitle,0,1) }" step="1">
							<c:if test="${fn:substring(post.posttitle,0,1) != 0}">
								&nbsp;&nbsp;&nbsp;&nbsp;
							</c:if>
						</c:forEach>
						<c:if test="${post.parentseq != 0 }">→&nbsp;</c:if>
						<c:if test="${post.postdel == 'Y' }">
							<a href="${cp }/post/readPost?postseq=${post.postseq}&boardseq=${param.boardseq}">${fn:substring(post.posttitle,1,fn:length(post.posttitle)) }</a>
						</c:if>
						<c:if test="${post.postdel != 'Y' }">
							삭제된 게시글입니다.
						</c:if>
						</td>
						<td>${post.userid }</td>
						<td><fmt:formatDate value="${post.post_dt }" pattern="yyyy-MM-dd"/></td>
					</tr>
				</c:forEach>
			</table>
		</div>

		<a href="${cp }/post/newPost?boardseq=${param.boardseq}" class="btn btn-default pull-right">새글 등록</a>

			<div class="text-center">
				<ul class="pagination">
					<%--이전페이지 가기 : 지금 있는 페이지에서 한 페이지 전으로 
						단, 1페이지인 경우는 li 태그에 class="disabled"를 추가하고
						이동 경로는 차단한다.
					--%>
						<c:choose>
							<c:when test="${param.page == 1}">
								<li class="disabled">
							        <span aria-hidden="true">&laquo;</span>
					   			</li>
							</c:when>
							<c:otherwise>
								<li>
							     	<a href="${cp }/board/postList?page=${pageVo.page -1}&boardseq=${param.boardseq}" aria-label="Previous">
							        	<span aria-hidden="true">&laquo;</span>
							     	</a>
					   			</li>
							</c:otherwise>
						</c:choose>
				    
					<c:forEach begin="1" end="${paginationSize }" var="page">
					
						<c:choose>
						
							<c:when test="${page == pageVo.page }">
								<li class="active"><span>${page }</span></li>
							</c:when>

							<c:otherwise>
								<li><a href="${cp }/board/postList?page=${page}&boardseq=${param.boardseq}">${page }</a></li>
							</c:otherwise>
							
						</c:choose>
						
					</c:forEach>
					
					<c:choose>
							<c:when test="${param.page == paginationSize}">
								<li class="disabled">
							        <span aria-hidden="true">&raquo;</span>
					   			</li>
							</c:when>
							<c:otherwise>
								<li>
							     	<a href="${cp }/board/postList?page=${pageVo.page+1}&boardseq=${param.boardseq}" aria-label="Next">
				      				<span aria-hidden="true">&raquo;</span>
				     				</a>
					   			</li>
							</c:otherwise>
					</c:choose>
				</ul>
			</div>
	</div>
</div>
	</div>
		</div>
	</div>
</body>
</html>
