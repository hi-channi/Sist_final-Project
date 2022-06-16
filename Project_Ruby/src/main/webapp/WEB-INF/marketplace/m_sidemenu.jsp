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
<link rel="stylesheet" type="text/css" href="${root }/css/marketplace/marketplacesidemenu.css">
<title>Insert title here</title>
<style type="text/css">
/*공용버튼*/
.btn-small {
  outline: none;
  width: 75px;   /* 넓이 수정 가능 */
  height: 30px; /* 높이 수정 가능 */
  border: 2px solid #ff4b4e; 
  border-radius: 20px;
  color: #ff4b4e;
  font-family: 'Noto Sans KR';
  font-weight: 400;   /* 글씨 Bold 수정 가능 */
  background: transparent;
  cursor: pointer;
  transition: all 0.3s ease;
  position: relative;
  display: inline-block;
}

.btn-small {
  overflow: hidden;
  transition: all 0.2s ease;
}
.btn-small:hover {
   background: #ff4b4e;
  color: #fff;
}
.btn-small:before {
    position: absolute;
    content: '';
    display: inline-block;
    top: -180px;
    left: 0;
    width: 30px;
    height: 100%;
    background-color: #fff;
    animation: shiny-btn1 3s ease-in-out infinite;
}

.btn-small:active{
  box-shadow:  4px 4px 6px 0 rgba(255,255,255,.3),
              -4px -4px 6px 0 rgba(116, 125, 136, .2), 
    inset -4px -4px 6px 0 rgba(255,255,255,.2),
    inset 4px 4px 6px 0 rgba(0, 0, 0, .2);
}
</style>


<script type="text/javascript">
$(function () {
	$(".sub1").hide();
	$(".sub2").hide();
	$(".sub3").hide();
	$(".sub1-1").hide();
	
	$("#carte1").click(function(){
		
		$(this).next().toggle("fast");
		
	});
	
	$("#carte2").click(function(){
		
		$(".sub2").toggle("fast");
		
	});
	
	$("#carte3").click(function(){
	
	$(this).next().toggle("fast");
	
	});
	
	$(".subtitle").click(function(){
		
		$(this).next().toggle("fast");
	});

	<%--컬러 서브 메뉴 이벤트--%>
	$(".radiocolor").change(function(){
		
		if($(this).is(":checked"))
		{
			//var a=$(this).val();
			//alert(a);
			
			$(".colorname").css("color","black");
			$(this).parent('#colorkind').children(".sidemenucolorbox").children(".colorname").css("color","red");
		
		}
	});
	
	
	<%--카테고리 서브 메뉴(노트북 모니터 키보드 마우스 등 ) 색 변환--%>
	 $(".submenucartegori").change(function(){
		
		if($(this).is(":checked"))
		{
			//var a=$(this).val();
			//alert(a);
			
			$(".cglabel").css("color","black");
			$(this).parent().css("color","red");
		} 
		
	
	 });
	 
	 /*리셋 버튼*/
	 $("#resetbtn").click(function(){
		 
		 location.reload();
		
	 });
	 
	 /*완료 버튼*/
	 $("#successbtn").click(function(){
		
		var i = $('input[name="subtitle"]:checked').val();
		var j = $('input[name="colorradio"]:checked').val();
		//후에 가격대 밸류값 정해서 넘기면 됨
		var k = $('input[name="marketprice"]:checked').val();
		 
		 alert(i+","+j+","+k);
	 });
	 
	 
});
</script>
</head>

<body>

<span class="sidemenubarname">키보드검색</span>
<div class="sidemenu" style="border: solid 1px #dbdbdb; border-top: solid 2px black;">
 	<ul>
 		<li class="marketmenu">
 			<div class="marketmenutitle" id="carte1"><b id="side_control">카테고리</b><span class="glyphicon glyphicon-menu-down menudown1" id="menudownicon"></span></div>
 			<ul class="sub1">
 				<li class="carte1sub"><h6 class="subtitle">IT전자기기</h6>
 				<ul class="sub1-1">
 					<li class="submenutitle"><a href="#" id="selectionmenu">
	 					<label class="cglabel">
	 					<input type="radio" id="cartegorisubmenu" class="submenucartegori" name="subtitle" value="노트북">
	 					· 노트북
	 					</label>
 					</a></li>
 					
 					<li class="submenutitle"><a href="#" id="selectionmenu">
	 					<label class="cglabel">
		 				<input type="radio" id="cartegorisubmenu" class="submenucartegori" name="subtitle" value="모니터">
	 					· 모니터
	 					</label>
 					</a></li>
 					
 					
 					<li class="submenutitle"><a href="#" id="selectionmenu">
 					<label class="cglabel">
		 			<input type="radio" id="cartegorisubmenu" class="submenucartegori" name="subtitle" value="키보드">
 					· 키보드
 					</label>
 					</a></li>
 					
 					
 					<li class="submenutitle"><a href="#" id="selectionmenu">
 					<label class="cglabel">
		 			<input type="radio" id="cartegorisubmenu" class="submenucartegori" name="subtitle" value="마우스">
 					· 마우스
 					</label>
 					</a></li>
 					
 					
 					<li class="submenutitle"><a href="#" id="selectionmenu">
 					<label class="cglabel">
		 			<input type="radio" id="cartegorisubmenu" class="submenucartegori" name="subtitle" value="스피커">
 					· 스피커
 					</label>
 					</a></li>
 				</ul>
 				</li>
 				<li class="carte1sub"><h6 class="subtitle">IT사무용품</h6></li>
 				<li class="carte1sub"><h6 class="subtitle">IT도서</h6></li>
 			</ul>
 			<div class="marketmenutitle" id="carte2" style="border-top: solid 1px #dbdbdb;"><b id="side_control">컬러</b><span class="glyphicon glyphicon-menu-down  menudown2" id="menudownicon"></span></div>
 			
 			<ul class="sub2">
 			<div class="colorbox">
 				<li id="colorli"><a href="#">
 					<label  class="blacklabel" id="colorkind">
						<input type="radio" id="colorchk" name="colorradio" value="블랙" class="radiocolor">
		 					<div class="sidemenucolorbox" style="background: black; border: 1px solid #dbdbdb;">
		 						<span class="colorname">블랙</span>
		 					</div>
		 			</label>
 				</a></li>
 				
				<li id="colorli"><a href="#">
					<label  class="graylabel" id="colorkind">
						<input type="radio" id="colorchk" name="colorradio" value="회색" class="radiocolor">
							<div class="sidemenucolorbox" style="background: gray; border: 1px solid #dbdbdb;">
							<span class="colorname">회색</span>
							</div>
					</label>
				</a></li>
				
				<li id="colorli"><a href="#">
					<label  class="bluelabel" id="colorkind">
						<input type="radio" id="colorchk" name="colorradio" value="블루" class="radiocolor">
							<div class="sidemenucolorbox" style="background: blue; border: 1px solid #dbdbdb;">
							<span class="colorname">블루</span>
							</div>
					</label>
				</a></li>
				
				<li id="colorli"><a href="#">
					<label class="yellowlabel" id="colorkind">
						<input type="radio" id="colorchk" name="colorradio" value="노랑" class="radiocolor">
							<div class="sidemenucolorbox" style="background: yellow; border: 1px solid #dbdbdb;">
							<span class="colorname">노랑</span>
							</div>
					</label>
				</a></li>
				
				<li id="colorli"><a href="#">
					<label  class="purplelabel" id="colorkind">
						<input type="radio" id="colorchk" name="colorradio" value="보라" class="radiocolor">
							<div class="sidemenucolorbox" style="background: purple; border: 1px solid #dbdbdb;">
							<span class="colorname">보라</span>
							</div>
					</label>
				</a></li>
				
				<li id="colorli"><a href="#">
					<label  class="whitelabel" id="colorkind">
						<input type="radio" id="colorchk" name="colorradio" value="흰색" class="radiocolor">
							<div class="sidemenucolorbox" style="background: white; border: 1px solid #dbdbdb;">
							<span class="colorname">흰색</span>
							</div>
					</label>
				</a></li>
				
				<li id="colorli"><a href="#">
					<label  class="redlabel" id="colorkind">
						<input type="radio" id="colorchk" name="colorradio" value="빨강" class="radiocolor">
							<div class="sidemenucolorbox" style="background: red; border: 1px solid #dbdbdb;">
							<span class="colorname">빨강</span>
							</div>
					</label>
				</a></li>
				
				<li id="colorli"><a href="#">
					<label  class="greenlabel" id="colorkind">
						<input type="radio" id="colorchk" name="colorradio" value="초록" class="radiocolor">
							<div class="sidemenucolorbox" style="background: green; border: 1px solid #dbdbdb;">
							<span class="colorname">초록</span>
							</div>
					</label>
				</a></li>
				
				<li id="colorli"><a href="#">
					<label  class="brownlabel" id="colorkind">
						<input type="radio" id="colorchk" name="colorradio" value="갈색" class="radiocolor">		
							<div class="sidemenucolorbox" style="background: brown; border: 1px solid #dbdbdb;">
							<span class="colorname">갈색</span>
							</div>
					</label>
				</a></li>
				
				<li></li>	
			</div>		
 			</ul>
 			
 			<div class="marketmenutitle" id="carte3" style="border-top: solid 1px #dbdbdb;"><b id="side_control">가격대</b><span class="glyphicon glyphicon-menu-down  menudown3" id="menudownicon"></span></div>
 			<ul class="sub3">
			<li class="submenutitle"><label class="pricelabel"><input type="radio" name="marketprice" class="marketpriceselect" id="radiobtn" value="10000"><b class="radioimg"></b>10,000원 이하</label></li>
			<li class="submenutitle"><label class="pricelabel"><input type="radio" name="marketprice" class="marketpriceselect" id="radiobtn" value="10000 ~ 50000"><b class="radioimg"></b>10,000원 ~ 50,000원</label></li>
			<li class="submenutitle"><label class="pricelabel"><input type="radio" name="marketprice" class="marketpriceselect" id="radiobtn" value="50000 ~ 100000"><b class="radioimg"></b>50,000원 ~ 100,000원</label></li>
			<li class="submenutitle"><label class="pricelabel"><input type="radio" name="marketprice" class="marketpriceselect" id="radiobtn" value="100000 ~ 200000"><b class="radioimg"></b>100,000원 ~ 200,000원</label></li>
			<li class="submenutitle"><label class="pricelabel"><input type="radio" name="marketprice" class="marketpriceselect" id="radiobtn" value="200000이상"><b class="radioimg"></b>200,000원 이상</label></li>
			</ul>
			
			
		<!-- 	<label for="colorchk">
				<input type="checkbox" id="colorchk">
				<div class="sidemenucolorbox" style="background: brown; border: 1px solid #dbdbdb;">
				<span class="colorname">갈색</span>
			</label> -->
		
			
 		</li>
 		
 		
 	</ul>
 	
 	<div class="btnarea" style="border: 0px solid black;">
 		<button type="button" class="btn-marketsub" id="successbtn">검색</button>
 		<button type="button" class="btn-marketsub" id="resetbtn">초기화</button>
 	</div>
 	
</div>

</body>
</html>