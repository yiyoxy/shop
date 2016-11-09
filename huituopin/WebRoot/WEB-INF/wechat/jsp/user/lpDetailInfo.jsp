<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<title>个人信息</title>
		<link rel="stylesheet" href="<%=basePath%>wechat/css/mui.min.css">
		<!--App自定义的css-->
		<link rel="stylesheet" type="text/css" href="<%=basePath%>wechat/css/app.css"/>
		<link rel="stylesheet" type="text/css" href="<%=basePath%>wechat/css/footer.css"/>
		<style>
			.icondiv{
				height: 30px;
				width: 30px;
				margin: 0 auto;
			}
			.footer{
				height: 30px;
				width: 15px;
				margin: 0 auto;
				padding-top: 10px;
			}
			.mui-navigate-right:after{
				content: '';
			}
		</style>
	</head>
	<body>
		<ul class="mui-table-view "style="height: 64px;color: #4B4B4B;">
			<li class="mui-table-view-cell" >
				<a class="mui-navigate-right" style="padding-top: 8px;height: 56px;">
					<span style="font-size: 14px;float: left;padding-top: 13px;">头像</span>
					<img class="mui-media-object mui-pull-right head-img" src="<%=path%>/${sessionScope.user.userWcAvatar}"  style="height: 48px;max-width: 50px;"/>
				</a>
			</li>
		</ul>
		<div style="height:12px;"></div>
		<ul class="mui-table-view mui-table-view-chevron" style="font-size: 14px;color: #4B4B4B;">
			<li class="mui-table-view-cell" style="height: 35px;">
				<a class="mui-navigate-right" style="padding-top: 8px;">姓名
				<span class="mui-pull-right" >
							${sessionScope.user.userWcNickname}
				</span></a>
			</li>
			<li class="mui-table-view-cell"style="height: 35px;">
				<a class="mui-navigate-right"style="padding-top: 8px;">手机号码
				<span class="mui-pull-right">${sessionScope.user.userPhone}</span></a>
			</li>
			<li class="mui-table-view-cell"style="height: 35px;">
				<a class="mui-navigate-right"style="padding-top: 8px;">积分
				<span class="mui-pull-right">
				<c:choose>
						<c:when test="${empty lovingPeople}">								
							0
						</c:when>
						<c:otherwise>
							${lovingPeople.loveCredicts}
						</c:otherwise>
					</c:choose>
				</span></a>
			</li>
			<li class="mui-table-view-cell"style="height: 35px;">
				<a class="mui-navigate-right"style="padding-top: 8px;">账户类型
				<span class="mui-pull-right">爱心人士</span></a>
			</li>
		</ul>
		<nav class="mui-bar mui-bar-tab">
					<jsp:include page="footer.jsp"></jsp:include>
				</nav>
	</body>
</html>
