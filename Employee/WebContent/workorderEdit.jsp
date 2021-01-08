<%@ page import="com.deo.Workorderdeo"%>
<jsp:useBean id="wc" class="com.bean.Workorderbean"></jsp:useBean>
<jsp:setProperty property="*" name="wc"/>
<%
int i=Workorderdeo.update(wc);
if(i>0)
{
	response.sendRedirect("viewWorkorder.jsp");
}
else 
{
	response.sendRedirect("emploginError.jsp");
}

%>