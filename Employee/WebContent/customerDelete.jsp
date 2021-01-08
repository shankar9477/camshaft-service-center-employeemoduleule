<%@ page import="com.deo.Customerdeo"%>
<jsp:useBean id="cc" class="com.bean.Customerbean"></jsp:useBean>
<jsp:setProperty property="*" name="cc"/>
<%
	int i=Customerdeo.delete(cc);
if(i>0)
{
	response.sendRedirect("viewCustomer.jsp");
}
else 
{
	response.sendRedirect("emploginError.jsp");
}
%>