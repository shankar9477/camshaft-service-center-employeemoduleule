<%@ page import="com.deo.Techniciandeo"%>
<jsp:useBean id="tc" class="com.bean.Technicianbean"></jsp:useBean>
<jsp:setProperty property="*" name="tc"/>
<%
int i=Techniciandeo.update(tc);
if(i>0)
{
	response.sendRedirect("viewTechnician.jsp");
}
else 
{
	response.sendRedirect("emploginError.jsp");
}

%>