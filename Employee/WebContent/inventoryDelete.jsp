<%@ page import="com.deo.Inventorydeo"%>
<jsp:useBean id="ic" class="com.bean.Inventorybean"></jsp:useBean>
<jsp:setProperty property="*" name="ic"/>
<%
int i=Inventorydeo.delete(ic);
if(i>0)
{
	response.sendRedirect("viewInventory.jsp");
}
else 
{
	response.sendRedirect("emploginError.jsp");
}

%>