<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html >
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="background/resources/css/pintuer.css">
<link rel="stylesheet" href="background/resources/css/admin.css">
<script src="background/resources/scripts/jquery-1.3.2.min.js"></script>
<title>闪电新闻管理系统</title>
<script type="text/javascript">
	$(document).ready(function(){
		 $(".leftnav h2").click(function(){
			  $(this).next().slideToggle(200);	
			  $(this).toggleClass("on"); 
		  })
		  $(".leftnav ul li a").click(function(){
			    $("#a_leader_txt").text($(this).text());
		  		$(".leftnav ul li a").removeClass("on");
				$(this).addClass("on");
		  })
		  showTime();
	});
	
    function showTime(){ 
        var show_day=new Array('星期一','星期二','星期三','星期四','星期五','星期六','星期日'); 
        var time=new Date(); 
        var year=time.getFullYear();
        var month=time.getMonth(); 
        var date=time.getDate(); 
        var day=time.getDay(); 
        var hour=time.getHours(); 
        var minutes=time.getMinutes(); 
        var second=time.getSeconds(); 
        month<10?month='0'+month:month; 
        month=month+1; 
        hour<10?hour='0'+hour:hour; 
        minutes<10?minutes='0'+minutes:minutes; 
        second<10?second='0'+second:second; 
        var now_time=year+'年'+month+'月'+date+'日'+' '+hour+':'+minutes+':'+second; 
        $(".currentTime").html(now_time);
        setTimeout("showTime();",1000); 
    } 
    
    // 用户退出
    function logout(){
    	if (confirm("您确定要退出系统吗?")) {
    		// 此处的window指的是BOM对象:浏览器操作对象
			window.location.href = "user?action=logout";
		}
    }
	
</script>
</head>
<body style="background-color:#f2f9fd;">
<div class="header bg-main">
  <div class="logo margin-big-left fadein-top">
    <h1><img src="background/resources/images/logo.jpg" class="radius-circle rotate-hover" height="50" alt="" />闪电新闻系统管理平台</h1>
  </div>
  <div class="head-l">
  	<a class="button button-little bg-blue" href="a.jsp" target="_blank"><span class="icon-home"></span> 前台首页</a> &nbsp;&nbsp;
  	<a class="button button-little bg-red" href="javascript:logout();"><span class="icon-power-off"></span> 退出登录</a> 
  </div>
</div>
<div class="leftnav">
  <div class="leftnav-title"><strong><span class="icon-list"></span>菜单列表</strong></div>
  <h2><span class="icon-user"></span>新闻管理</h2>
  <ul style="display:block">
    <li><a href="news?action=newsShow" target="right"><span class="icon-caret-right"></span>新闻添加</a></li>
    <li><a href="news?action=backList" target="right"><span class="icon-caret-right"></span>新闻维护</a></li>
  </ul>   
  <h2><span class="icon-pencil-square-o"></span>类别管理</h2>
  <ul>
    <li><a href="newsType?action=newsTypeShow" target="right"><span class="icon-caret-right"></span>类别添加</a></li>
    <li><a href="newsType?action=backList" target="right"><span class="icon-caret-right"></span>类别维护</a></li>   
  </ul>
  <h2><span class="icon-pencil-square-o"></span>友情链接</h2>
  <ul>
    <li><a href="background/link/linkAdd.jsp" target="right"><span class="icon-caret-right"></span>链接添加</a></li>
    <li><a href="friendLink?action=friendLinkShow" target="right"><span class="icon-caret-right"></span>链接维护</a></li>   
  </ul>  
</div>
<ul class="bread">
  <li><a href="background/default.jsp" target="right" class="icon-home"> 首页</a></li>
  <li><a id="a_leader_txt">网站信息</a></li>
  <li><b>当前用户：</b><span style="color:red;">${currentUser.userName }</span></li>
</ul>
<div style="position: absolute; right: 15px;top: 80px;">
<span class="currentTime"></span>
</div>
<div class="admin">
  <iframe scrolling="auto" rameborder="0" src="background/default.jsp" name="right" width="100%" height="100%"></iframe>
</div>
</body>
</html>