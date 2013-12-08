<%@ page contentType="text/html;charset=euc-kr"%>
<%@ include file="../../common/IncludeTop.jsp"%>

<script type="text/javascript">
	function idClear(){
		document.getElementById("u_id").value = "";	
	}
	
	function zipCheck(){
		var url="zipCheckForm.action?check=1&dong=";
		window.open(url, "confirm", "toolbar=no, width=500, height=300, status=yes, scrollbars=yes, menubar=no");
	}
</script>

<spring:hasBindErrors name="userDto" />
<form:errors name="userDto" />

<spring:hasBindErrors name="input" />
<form:errors name="input" />

<div style="text-align:center">
<table style="width:80%; text-align:center; font-size:15px; font-weight:bold; background-color:#FFFF99">
<tr style="border-color:#FFFF99">
	<td>
		<span style="color:red; font-weight:bold"><form:errors path="userDto" /></span>
	</td>
</tr>
<tr> 
	<td style="background-color:#FFFFCC">
		<form name="regForm" method="post" action="registerProcess.action">
		
			<table style="width:100%; text-align:center; font-size:15px; background-color:#FFFF99; border:1px">
				
				<tr style="text-align:center; background-color:#996600"> 
					<td colspan="2" style="text-align:center"><span style="color:#0000FF; font-size:20px"><b>회원 가입</b></span></td>
				</tr>
				
				<tr> 
					<td style="width:20%">아이디</td>
					<td style="width:57%">
					    <input type="text" name="u_id" id="u_id" size="20" value="${userDto.u_name}" onclick="idClear();">
						<input type="button" value="ID중복확인" 
							onClick='window.open("idCheckForm.action?u_id=" + document.getElementById("u_id").value, "confirm", "width=350, height=200")'>
						
						<span style="color:red"><form:errors path="userDto.u_id"/></span>
					</td>
				</tr>
				<tr> 
					<td>패스워드</td>
					<td>
						<input type="password" name="u_pw" size="15">
						<span style="color:red"><form:errors path="userDto.u_pw"/></span>
					</td>
				</tr>
				<tr> 
					<td>패스워드 확인</td>
					<td>
						<input type="password" name="u_repw" size="15"> 
						<span style="color:red"><form:errors path="userDto.u_pw"/></span>	
					</td>
				</tr>
				<tr> 
					<td>이름</td>
					<td>
						<input type="text" name="u_name" size="20" value="${userDto.u_name}">
						<span style="color:red"><form:errors path="userDto.u_name"/></span> 
					</td>
				</tr>
				<tr> 
					<td>생일</td>
					<td>
						<input type="text" name="u_birth" size="20" value="">(연도4자리-월2자리-일2자리)
						<div style="color:red"><form:errors path="userDto.u_birth"/></div>
					</td>
				</tr>
				<tr> 
					<td>이메일</td>
					<td>
						<input type="text" name="u_email" size="27" value="">
						<span style="color:red"><form:errors path="userDto.u_email"/></span> 
					</td>
				</tr>
				<tr>  
					<td>전화번호</td>
					<td>
						<input type="text" name="u_tel" size="20" value="">
						<span style="color:red"><form:errors path="userDto.u_tel"/></span>
					</td>
				</tr>
				<!-- tr>  
					<td>우편번호</td>
					<td>
						<input type="text" name="u_post" size="7" value="">
						<input type="button" value="우편번호찾기" onClick="zipCheck()">
						<span style="color:red"><form:errors path="userDto.u_post"/></span>
					</td>
				</tr-->
				<tr>  
					<td>주소</td>
					<td>
						<input type="text" name="u_addr" size="70" value="">
						<span style="color:red"><form:errors path="userDto.u_addr"/></span>	
					</td>
				</tr>
				<tr>  
					<td>직업</td>
					<td>
						<select name="u_job">
							<option value="">선택하세요.
							<option value="회사원">회사원
							<option value="연구전문직">연구전문직
							<option value="교수학생">교수학생
							<option value="일반자영업">일반자영업
							<option value="공무원">공무원
							<option value="의료인">의료인
							<option value="법조인">법조인
							<option value="종교,언론,에술인">종교.언론/예술인
							<option value="농,축,수산,광업인">농/축/수산/광업인
							<option value="주부">주부
							<option value="무직">무직
							<option value="기타">기타
						</select>
						
						<!-- select name="u_job">
							<c:forEach var="v" items="${JobList}">
								<option value="${v.key}" <c:if test="${v.key == userDto.u_job}">selected</c:if>>${v.value}</option>
							</c:forEach>
						</select-->
						<span style="color:red"><form:errors path="userDto.u_job"/></span>
					</td>
				</tr>
				<tr> 
					<td colspan="2" style="text-align:center"> 
					<input type="submit" value="회원가입"> 
					&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
					<input type="reset" value="다시쓰기"> 
					</td>
				</tr>
				
			</table>
		
		</form>
	</td>
</tr>
</table>
</div>	
<%@ include file="../../common/IncludeBottom.jsp"%>