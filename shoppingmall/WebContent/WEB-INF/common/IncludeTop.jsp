<%@ page contentType="text/html;charset=euc-kr"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<link rel="StyleSheet" href="style/shoppingmall.css" type="text/css"	media="screen" />
<meta name="generator"
	content="HTML Tidy for Linux/x86 (vers 1st November 2002), see www.w3.org" />
<title>Shoppingmall Demo</title>
<meta content="text/html; charset=windows-1252"
	http-equiv="Content-Type" />
<meta http-equiv="Cache-Control" content="max-age=0" />
<meta http-equiv="Cache-Control" content="no-cache" />
<meta http-equiv="expires" content="0" />
<meta http-equiv="Expires" content="Tue, 01 Jan 1980 1:00:00 GMT" />
<meta http-equiv="Pragma" content="no-cache" />
</head>

<body>

<div id="Header">
	<div id="Logo">
		<div id="LogoContent">
			<a href="index.action"><img src="images/page/logo-topbar.gif" style="width:200px;hieght:80px"/></a>
		</div>
	</div>

	<div id="Menu">
		<div id="MenuContent">
			
			<c:choose>
			
			     <c:when test="${USER_KEY.u_id != null && USER_KEY.u_id != ''}">

					<a href="">
						<img align="middle" name="img_cart" src="images/page/cart.gif" />
					</a>
							
					<img align="middle" src="images/page/separator.gif" />
							
					<a href="">Order List</a>
							    
					<img align="middle" src="images/page/separator.gif" />
							
					<a href="logout.action">Sign Out</a>
				</c:when>	
			     <c:when test="${USER_KEY.u_id == null || USER_KEY.u_id == ''}">					
					<a href="loginForm.action">Sign In</a>

			     </c:when>
			</c:choose>     
			     
			      
				<img align="middle" src="images/page/separator.gif" />
				<a href="../help.html">Help</a>
			
			
		</div>
	</div>

	<div id="Search">
		<div id="SearchContent"></div>
	</div>

	<div id="QuickLinks" style="color: blue;font-size: 20px;font-weight: bold">
		<a href="goods_list.action?item=bag">bag</a>
		<img src="images/page/separator.gif" /> 
		<a href="goods_list.action?item=hat">hat</a>
		<img src="images/page/separator.gif" /> 
		<a href="goods_list.action?item=jewelry">jewelry</a>
		<img src="images/page/separator.gif" /> 
		<a href="goods_list.action?item=shoes">shoes</a>
		<img src="images/page/separator.gif" /> 
		<a href="goods_list.action?item=others">others</a>
	</div>
</div>

<div id="Content">