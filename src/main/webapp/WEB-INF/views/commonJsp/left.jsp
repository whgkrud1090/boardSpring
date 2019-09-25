<%@page import="javax.annotation.Resources"%>
<%@page import="kr.or.ddit.board.service.IBoardService"%>
<%@page import="org.springframework.ui.Model"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<ul class="nav nav-sidebar">
	<li class="active"><a href="${cp }/board/board">게시판 생성<span class="sr-only">(current)</span></a></li>
	<br>
	<c:forEach items="${boardList }" var="board">
		<c:if test="${board.boardusage == 'Y' }">
			<li class="active"><a href="${cp }/board/postList?boardseq=${board.boardseq }">${board.boardnm }<span class="sr-only">(current)</span></a></li>
		</c:if>
	</c:forEach>
</ul>

