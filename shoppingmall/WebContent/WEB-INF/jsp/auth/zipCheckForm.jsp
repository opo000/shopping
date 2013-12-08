<%@ page contentType="text/html;charset=euc-kr"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head><title>�����ȣ�˻�</title><link href="style/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	function dongCheck(){
		if(document.getElementById("dong").value == ""){
			alert("���̸��� �Է��ϼ���");
			document.getElementById("dong").focus();
			return;
		}
		
		location.href = "zipCheckForm.action?check=2&dong=" + document.getElementById("dong").value;
	}
	
	function sendAddress(zipcode, sido, gugun, dong, bunji){
		var address = sido + " " + gugun + " " + dong + " " + bunji;
		opener.document.regForm.u_post.value = zipcode;
		opener.document.regForm.u_addr.value = address;
		self.close();
	}
</script>
</head>
<body style="background-color:#FFFFCC">
<div style="text-align:center">
	<b>�����ȣ ã��</b>
	<table>
	<tr>
		<td>
			<br>
			���̸� �Է� : <input name="dong" id="dong" type="text">
			<input type="button" value="�˻�" onclick="dongCheck();" >
		</td>
	</tr>
	
	<c:if test="${check=='2'}">
		<c:if test="${zip == null || zip==''}">
			<tr><td align="center"><br>�˻��� ����� �����ϴ�.</td></tr>
		</c:if>
	</c:if>
		
	<tr><td align="center"><br>�ذ˻� ��, �Ʒ� �����ȣ�� Ŭ���ϸ� �ڵ����� �Էµ˴ϴ�.</td></tr>
	<tr>
		<td>
			<c:forEach var='z' items="${zip}">
				<a href="#" onclick="sendAddress('${z.ZIPCODE}', '${z.SIDO}', '${z.GUGUN}', '${z.DONG}', '${z.BUNJI}')">
				${z.ZIPCODE}&nbsp;&nbsp;${z.SIDO}&nbsp;&nbsp;${z.GUGUN}&nbsp;&nbsp;${z.DONG}&nbsp;&nbsp;${z.BUNJI}
				</a><br/>
			</c:forEach>
		</td>
	</tr>
	</table>
</div>
</body>
</html>