<%@ page contentType="text/html;charset=euc-kr"%>
<%@ include file="../../common/IncludeTop.jsp"%>

	<table style="width:100%; text-align:center">
	<tr> 
		<td style="background-color:#FFFFCC; text-align:center">
			<table style="width:95%; background-color:#FFFF99; text-align:center; border:1px">
			<tr style="background-color:#996600"> 
				<td colspan="3" style="text-align:center"><span style="color:#FFFFFF">${result.g_name}</span></td>
			</tr>
			<tr> 
				<td style="width:20%">
					<c:choose>
						<c:when test="${result.g_part == 'BA'}">
							<img src="images/goods/bag/${result.g_image1}.jpg"  alt="${result.g_name}"/>
						</c:when>
						<c:when test="${result.g_part == 'HA'}">
							<img src="images/goods/hat/${result.g_image1}.jpg"  alt="${result.g_name}"/>
						</c:when>
						<c:when test="${result.g_part == 'FW'}">
							<img src="images/goods/shoes/${result.g_image1}.jpg"  alt="${result.g_name}"/>
						</c:when>
						<c:when test="${result.g_part == 'JN' || result.g_part == 'JE' || result.g_part == 'JA' || result.g_part == 'JR' || result.g_part == 'SC'}">
							<img src="images/goods/jewelry/${result.g_image1}.jpg"  alt="${result.g_name}"/>
						</c:when>
						<c:when test="${result.g_part == 'SB' || result.g_part == 'SH' || result.g_part == 'SO'}">
							<img src="images/goods/others/${result.g_image1}.jpg"  alt="${result.g_name}"/>
						</c:when>
					</c:choose>
				</td>
				<td style="width:30%;vertical-align:top">
					<form name="cart" action="cart_add.action">
						<table style="width:100%; height:100px; border:0px">
						<tr>
							<td><b>상품명 : </b> ${result.g_name}</td>
						</tr>			
						<tr>
							<td><b>가격 : </b> ${result.g_sellprice}</td>
						</tr>
						<tr>
							<td><b>수량 : </b><input type="text" name="o_quantity" size="5" value="1">개</td>
						</tr>
						<tr>
							<td align="center">
								<input type="submit" value="장바구니에 담기">
							</td>
						</tr>
						</table>
						<input type="hidden" name="o_code" value="${result.g_code}">			
						<input type="hidden" name="o_name" value="${result.g_name}">			
						<input type="hidden" name="o_price" value="${result.g_sellprice}">		
					</form>
				</td>
				<td style="width:50%;vertical-align:top">
					<b>상세 설명</b><br><span style="font-size:15px">${result.g_content}</span>
				</td>
			</tr>
			</table>
		</td>
	</tr>
	</table>
<%@ include file="../../common/IncludeBottom.jsp"%>