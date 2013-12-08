<%@ page contentType="text/html;charset=euc-kr"%>
<%@ include file="../../common/IncludeTop.jsp"%>

<spring:hasBindErrors name="userDto" />
<form:errors name="userDto" />

<spring:hasBindErrors name="login" />
<form:errors name="login" />

<div style="text-align:center">
<form method="post" action="loginProcess.action">
<table style="width:50%; text-align:center; background-color:#FFFF99">
<tr style="border-color:#FFFF99">
	<td>
		<span style="color:red; font-weight:bold"><form:errors path="userDto" /></span>
	</td>
</tr>
<tr style="border-color:#FFFF99">  
	<td style="height:190px">
			<table style="width:100%; border:1px; text-align:center">
			<tr style="border-color:#FFFF66"> 
				<td colspan="2" style="text-align:center;font-weight:bold">로그인</td>
			</tr>
			<tr > 
				<td style="text-align:center">ID</td>
				<td style="text-align:left">
					<input type="text" name="u_id" value="">
					<span style="color:red"><form:errors path="userDto.u_id"/></span>
				</td>
			</tr>
			<tr> 
				<td style="text-align:center">Password</td>
				<td style="text-align:left">
					<input type="text" name="u_pw">
					<span style="color:red"><form:errors path="userDto.u_pw"/></span>
				</td>
			</tr>
			<tr> 
				<td colspan="2" style="text-align:center">
					<input type="submit" value="login">&nbsp;&nbsp;&nbsp;
					<input type="reset" value="reset">&nbsp;&nbsp;&nbsp; 
					<input type="button" value="회원가입" onclick="location.href='registerForm.action'"/>
				</td>
			</tr>
			</table>
	</td>
</tr>
</table>
</form>
</div>
<%@ include file="../../common/IncludeBottom.jsp"%>