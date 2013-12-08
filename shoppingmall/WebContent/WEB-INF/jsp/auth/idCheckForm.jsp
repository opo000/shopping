<%@ page contentType="text/html;charset=euc-kr"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
<title>ID중복체크</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>

<body style="background-color:#FFFFCC">
<br>
<div style="text-align:center">
<span style="font-weight:bold">입력한 아이디 : ${idList.id1}</span>
<p/>

<c:if test="${idList.id2 == null}">
	이 아이디는 사용하셔도 좋습니다.
</c:if>

<c:if test="${idList.id2 != null }">
	이미 사용중인 아이디입니다.
</c:if>
</div>
</body>
</html>