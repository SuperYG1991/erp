<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
<style type="text/css">
.playercase{width:360px;height:320px;margin:auto;
	border:1px solid #C8C8C8;border-radius:5px;}
.chat-list{width:350px;
	height:220px;
	padding:5px;
	font-size:14px;font-family:微软雅黑;
	border-bottom:1px solid #C8C8C8;
	background:#F8F8F8;
	overflow-y:scroll;}
.chat{width:360px;height:60px;}
.chat .chat-speak{border:1px solid #F70;
	width:340px;
	height:50px;
	margin:30px 0 0 10px;
	border-radius:5px;
	background:#fff;}
ul{padding:0;margin:0;}
li{list-style:none;float:left;}
#fans-icon{width:40px;height:40px;
					margin:4px 10px;padding:3px 10px 0 0;
					border-right:1px solid #F70;}
#icon-top{display:block;width:32px;height:12px;margin:2px 0 0 3px;}
#icon-bottom{display:block;width:38px;height:16px;}
#idol-name{font-size:10px;font-family:微软雅黑;color:#FFF;margin:2px;}
#ltxt{margin:0 13px 0 6px;}
#txt{width:205px;
		height:50px;
		padding:5px 0px;
		outline:none;
		font-size:14px;}
#txt:empty::before{content:attr(placeholder);color:lightgrey;font-size:14px;}
#btn{background:#F70;border:1px solid #F70;width:45px;height:50px;
		 font-family:黑体;font-size:16px;color:#fff;outline:none;}
#btn:hover{background:#f14700;border:1px solid #F30}
</style>
</head>
<body>
<div class="playercase">
	<div class="chat-list" >
		
	</div>
	<div class="chat">
			<div class="chat-speak">
				<ul>
					<li id="limg">			
						<div id="fans-icon" style="background:">
								<i id="icon-top" style="background-image:url(http://sandbox.runjs.cn/uploads/rs/39/i0hbs0sl/entrance_btnbg.png)"></i>
							<span id="icon-bottom" style="background-image:url(http://sandbox.runjs.cn/uploads/rs/39/i0hbs0sl/10e4dc06079f8e8cfbf.png)">
										<i id="idol-name">颜皇K</i>
								</span>
						</div>
					</li>
					<li id="ltxt">
						<div id="txt" contenteditable="true" placeholder="试着输入“#关注”吧，可以关注主播哦">
						</div>
					</li>
					<li><input type="button" value="发送" id="btn"/></li>
				</ul>
			</div>
	</div>
</div>
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
$(function(){
	function addChat(){
		var chatContent=$("#txt").text();
		if(chatContent!=""){
			$(".chat-list").append("<ul><li><img src='http://sandbox.runjs.cn/uploads/rs/39/i0hbs0sl/girl-icon.png'/></li><li><img src='http://sandbox.runjs.cn/uploads/rs/39/i0hbs0sl/icon-pad.png'/></li><p><font color='#33f'>考拉的亦歌宝宝哟：</font>"+chatContent+"</p></li></ul>");			
			$("#txt").text("");
		}
	}	
	
	$("#btn").click(function(){
			addChat();
	})
	$("#txt").keyup(function(event){
		var num=window.event?event.keyCode:event.which;
		var chatContent=$("#txt").text();
		if(num == 13){				
			addChat();
		}
	});
	$(".char-list").scrollTop($(".char-list").height());
});

</script>
</body>
</html>