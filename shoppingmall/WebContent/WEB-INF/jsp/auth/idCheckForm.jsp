<%@ page contentType="text/html;charset=euc-kr"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
<title>ID�ߺ�üũ</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>

<body style="background-color:#FFFFCC">
<br>
<div style="text-align:center">
<span style="font-weight:bold">�Է��� ���̵� : ${idList.id1}</span>
<p/>

<c:if test="${idList.id2 == null}">
	�� ���̵�� ����ϼŵ� �����ϴ�.
</c:if>

<c:if test="${idList.id2 != null }">
	�̹� ������� ���̵��Դϴ�.
</c:if>
</div>
</body>
</html>