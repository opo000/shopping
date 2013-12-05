<%@ include file="../../common/IncludeTop.jsp" %>
<%@ page contentType="text/html;charset=euc-kr"%>

<div id="Catalog">

   <h2></h2>
   <table>
       <c:forEach var="goods" items="${result}">
           <c:choose>
               <c:when test="${goods.g_part == 'BA'}">
                   <img src="images/goods/bag/${goods.g_image1}.jpg" style="width:100px;height:100px;" alt="${goods.g_name}" />
               </c:when>
               
               <c:when test="${goods.g_part eq 'HA'}">
                   <img src="images/goods/hat/${goods.g_image1}.jpg" style="width:100px;height:100px;" alt="${goods.g_name}" />
               </c:when>

               <c:when test="${goods.g_part eq 'FW'}">
                   <img src="images/goods/shoes/${goods.g_image1}.jpg" style="width:100px;height:100px;" alt="${goods.g_name}" />
               </c:when>               

               <c:when test="${goods.g_part eq 'JN' || goods.g_part eq 'JE' ||goods.g_part eq 'JA' || goods.g_part eq 'JR' || goods.g_part eq 'SC'}">
                   <img src="images/goods/jewelry/${goods.g_image1}.jpg" style="width:100px;height:100px;" alt="${goods.g_name}" />
               </c:when>
               
               <c:when test="${goods.g_part eq 'SB' || goods.g_part eq 'SH' ||goods.g_part eq 'SO'}">
                   <img src="images/goods/others/${goods.g_image1}.jpg" style="width:100px;height:100px;" alt="${goods.g_name}" />
               </c:when>               
               
	       </c:choose>
       </c:forEach>
   </table>
</div>


<%@ include file="../../common/IncludeBottom.jsp" %>