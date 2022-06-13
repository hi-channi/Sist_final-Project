<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Yeon+Sung&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<c:set var="root" value="<%=request.getContextPath() %>"/>
<link rel="stylesheet" type="text/css" href="${root }/css/main.css">
<link rel="stylesheet" type="text/css" href="${root }/css/marketplace_css/marketplacemain.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<title>Insert title here</title>
<script type="text/javascript">
$(function(){
	$("#리스트").hide();
	
	$("span.large").click(function(){
		
		$("#리스트").hide();
		
		$("#전체").show();
	});
	
	$("span.list").click(function(){
		
		$("#전체").hide();
		
		$("#리스트").show();
	});
	
});

</script>
</head>
<body>
<div class="container">
	<div class="marketfirst">
		
	</div>
	
	<div class="marketfirst2">
		<span class="sangpumcount">300</span>	
		<span class="sangpumcountcomment">개의 상품이 있습니다.</span>		
	</div>
	
	
		
	<div class="search" style="border: solid 1px #dbdbdb;">
		<input type="text" value="검색어를 입력해 주세요." class="searchtext">
		<span class="glyphicon glyphicon-search searchicon"></span>	
	</div>
	
	
	<div class="changelist">
		<span class="glyphicon glyphicon-th-large largeicon large"></span>
		<span class="glyphicon glyphicon-list listicon list"></span>
	</div>
	
	<div class="relatedsearch" style="border: solid 1px #dbdbdb; border-top: solid 2px black;">
		<br>
		<span class="spanrelatedsearch">연관검색어</span>&nbsp;&nbsp;
		<span class="searchname">무선키보드</span>&nbsp;&nbsp;
		<span class="searchname">블루투스키보드</span>&nbsp;&nbsp;
		<span class="searchname">무접점키보드</span>
		<span class="morelook">더보기&nbsp;<span class="glyphicon glyphicon-menu-down morelookicon"></span></span>
	</div>
	<div class="selectbox">
		<input type="checkbox" class="chb">거래가능 제품만 보기
		<img alt="" src="${root }/element/sangpumaddbtn.png" class="addbtnimg">
	</div>
	<br>
	<div class="tab-content">
	
	
<%--전체 테이블 --%>
   <div id="전체" class="tab-pane fade in active markettable" >
      <h3>전체 상품</h3>
    <p>
      <table class="shoptb table table-bordered" style="width: 1024px; height: 600px;">
         
         <tr>
         
        	 <td>
        	   <a  style="cursor: pointer;" class="godetail">
        	     <img alt="" src="" >
        	     <br>
        	     <br>
        	     <b style="color: red; font-size: 1.3em;"></b>
        	     <span style="float: right;">
        	       <div style="color: gray; font-size: 13pt;">
        	        
        	         <strike></strike>
        	       </div>
        	       <div style="color: black; font-size: 16px;">
        	         
        	       </div>
        	     </span>
        	   </a>
        	 </td>
        	
         </tr>
      </table>
    </p>
  </div>
  
  <%--리스트 테이블 --%>
   <div id="리스트" class="tab-pane fade in active markettable" >
      <h3>전체 상품 (리스트)</h3>
    <p>
      <table class="shoptb table table-bordered" style="width: 1024px; height: 600px;">
         
         <tr>
         
        	 <td>
        	   <a  style="cursor: pointer;" class="godetail">
        	     <img alt="" src="" >
        	     <br>
        	     <br>
        	     <b style="color: red; font-size: 1.3em;"></b>
        	     <span style="float: right;">
        	       <div style="color: gray; font-size: 13pt;">
        	        
        	         <strike></strike>
        	       </div>
        	       <div style="color: black; font-size: 16px;">
        	         
        	       </div>
        	     </span>
        	   </a>
        	 </td>
        	
         </tr>
      </table>
    </p>
  </div>
	
  </div>
	



<%--페이징 처리 --%>
	<div class="pagenum">
	<div class="pagingnumber">
		<span class="spanpagingnumber">1</span>	
	</div>
	
	<div class="pagingnumber">
		<span class="spanpagingnumber">2</span>	
	</div>
	
	<div class="pagingnumber">
		<span class="spanpagingnumber">3</span>	
	</div>
	
	<div class="pagingnumber">
		<span class="spanpagingnumber">4</span>	
	</div>
	
	<div class="pagingnumber">
		<span class="spanpagingnumber">5</span>	
	</div>
	
	</div>
	
<!-- 페이징 -->
	<c:if test="${totalCount>0}">
		<div style="width: 800px;text-align: center;">
			<ul class="pagination">	
			<!-- 이전 -->
			<c:if test="${startPage>1}">
				<li><a href="list?currentPage=${startPage-1}">이전</a></li>
			</c:if>
			
			<c:forEach var="pp" begin="${startPage}" end="${endPage}">
				<c:if test="${currentPage==pp}">
					<li class="active"><a href="list?currentPage=${pp}">${pp}</a></li>
				</c:if>
				<c:if test="${currentPage!=pp}">
					<li><a href="list?currentPage=${pp}">${pp}</a></li>
				</c:if>
			</c:forEach>
			
			<!-- 다음 -->
			<c:if test="${endPage<totalPage}">
				<li><a href="list?currentPage=${endPage+1}">다음</a></li>
			</c:if>
			</ul>
		</div>
	</c:if>	
</div>
</body>
</html>