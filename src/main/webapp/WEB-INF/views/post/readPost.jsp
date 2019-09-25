<%@page import="kr.or.ddit.post.model.Post"%>
<%@page import="kr.or.ddit.user.model.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
<script src="/SE2/js/HuskyEZCreator.js"></script>
<script>
//문서 로딩이 완료되고 나서
$(document).ready(function(){
	
	// 사용자 정보 클릭시 이벤트 핸들러
	$("#deleBtn").on("click", function(){
		
		$("#delFrm").submit();
	});
	
	$("#replBtn").on("click", function(){
		
		$("#repFrm").submit();
	});
	
	$("#modiBtn").on("click", function(){
		
		$("#modiFrm").submit();
	});
	
	$("#instCommBtn").on("click", function(){
		
		$("#insCommFrm").submit();
	});
	
});

function commDeleBtn(commseq){
	$('#commseq').val(commseq);
	$('#commDelFrm').submit();
}
</script>
</head>

<body>
<form id="delFrm" action="${cp }/board/delPostList" method="post">
	<input type="hidden" name="postseq" value="${post.postseq }"/>
	<input type="hidden" name="boardseq" value="${param.boardseq }"/>
	<input type="hidden" name="mode" value="postdel"/>
</form>
<form id="repFrm" action="${cp }/post/replyForm" method="get">
	<input type="hidden" name="boardseq" value="${post.boardseq }"/>
	<input type="hidden" name="postseq" value="${post.postseq }"/>
</form>
<form id="modiFrm" action="${cp }/post/postModifyForm" method="get">
	<input type="hidden" name="boardseq" value="${post.boardseq }"/>
	<input type="hidden" name="postseq" value="${post.postseq }"/>
</form>
<form id="commDelFrm" action="${cp }/post/readPost" method="post">
	<input type="hidden" id="commseq" name="commseq"/>
	<input type="hidden" name="mode" value="commdel"/>
	<input type="hidden" name="postseq" value="${post.postseq }"/>
</form>
<!-- header -->
<%@include file="/WEB-INF/views/commonJsp/header.jsp" %>
<div class="container-fluid">
		<div class="row">
			
			<div class="col-sm-3 col-md-2 sidebar">
				<%@include file="/WEB-INF/views/commonJsp/left.jsp" %>
			</div>
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
			
				<div class="col-sm-12 blog-main">
					<h2 class="sub-header">${S_POSTBOARDVO.boardnm }</h2>
				</div>
				
				<div class="col-sm-12">
					<label for="posttitle" class="col-sm-2 control-label">제목</label>
					<div class="col-sm-10">
						${post.posttitle }
					</div>
					<hr class="col-sm-10" />
				</div>
				
				<div class="col-sm-12">
					<label for="postcont" class="col-sm-2 control-label">글 내용</label>
					<div class="col-sm-10">
						${post.postcont }
					</div>
					<hr class="col-sm-10" />
				</div>
				
				<div class="col-sm-12">
					<label for="userId" class="col-sm-2 control-label">첨부파일</label>
					<div class="col-sm-4">
					<form action="" enctype="multipart/form-data" > 
						<c:forEach items="${attaList }" var="afile" varStatus="loop">
							<div class="col-sm-12">
								<a download href="${cp }/post/attaFileDown?attaseq=${afile.attaseq }&postseq=${post.postseq}" >${afile.attafilename }</a>
							</div>
						</c:forEach>
					</form>
					</div>
					<div class="col-sm-6">
						<c:if test="${S_USERVO.userId == post.userid }">
							<button type="button" id="modiBtn" class="btn btn-default">수정</button>
							<button type="button" id="deleBtn" class="btn btn-default">삭제</button>
						</c:if>
						<button type="button" id="replBtn" class="btn btn-default">답글</button>
					</div>
					<hr class="col-sm-10" />
				</div>
				
				<div class="col-sm-12">
					<label for="postcont" class="col-sm-2 control-label">댓글</label>
					<div class="col-sm-10">
						<c:forEach items="${commList }" var="comm" varStatus="loop">
							<div class="col-sm-12">
								<c:choose>
									<c:when test="${comm.commdel == 'Y' }">
										<div class="col-sm-4">
											${comm.commcont }
										</div>
										<div class="col-sm-2">
											▷${comm.commwriter } / ${comm.comm_dt_fmt }◁
										</div>
										<div class="col-sm-2">
										<c:if test="${S_USERVO.userId == comm.commwriter }">
											<button type="button" onclick="commDeleBtn(${comm.commseq})" class="btn btn-default">삭제</button>
										</c:if>
										</div>
									</c:when>
									<c:otherwise>
										<div class="col-sm-4">
											<p style="color: lightblue">[삭제된 댓글 입니다.]</p>
										</div>
									</c:otherwise>
								</c:choose>
								<hr class="col-sm-12">
							</div>
						</c:forEach>
						<div class="col-sm-12">&nbsp;</div>
						<div class="col-sm-12">
							<form id="insCommFrm" action="${cp }/post/readPost" method="post">
								<div class="col-sm-12">
									<textarea class="col-sm-7" name="commcont" rows="5" cols="100"></textarea>
									<input type="hidden" id="mode" name="mode" value="incomm"/>
									<input type="hidden" name="postseq" value="${post.postseq }"/>
									<input type="hidden" id="commseq" name="commseq" value="0"/>
								</div>
								<div class="col-sm-12">&nbsp;</div>
								<div class="col-sm-7">
									<button type="button" id="instCommBtn" class="btn btn-default pull-right">댓글저장</button>
								</div>
							</form>
						</div>
					</div>
					<hr class="col-sm-10" />
				</div>
			</div>
		</div>
	</div>
</body>
</html>
