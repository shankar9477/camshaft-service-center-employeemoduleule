<%@ page import="com.deo.Jobcarddeo"%>
<jsp:useBean id="jc" class="com.bean.Jobcardbean"></jsp:useBean>
<jsp:setProperty property="*" name="jc"/>

 <%
int i=Jobcarddeo.delete(jc);
if(i>0)
{
	response.sendRedirect("viewJobcard.jsp");
}
else 
{
	response.sendRedirect("emploginError.jsp");
}

%>