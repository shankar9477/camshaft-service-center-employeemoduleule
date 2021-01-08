<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Main CSS-->
<link rel="stylesheet" type="text/css" href="css/main.css">
<!-- Font-icon css-->
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Welcome employee</title>
<script type="text/javascript">
	function wm(id, t) {
		if (document.getElementId(id).value.length == 0) {
			alert(t + "Will be filled out")

		}
	}
</script>
</head>
<%@ page language="java" import="com.bean.*"%>
<%
	response.setHeader("Cache-Control", "no-store,must-revalidate");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", -1);
	new java.util.Date();
	if (session.getAttribute("currentSessionUser") != null) {
%>

<body class="app sidebar-mini rtl">
	<%@ include file="header.jsp"%>




	<center>
		<h1>

			<%
				userbean currentUser = (userbean) (session.getAttribute("currentSessionUser"));
			%>
			<br>
			<br>
			<br>
			<div class="col-md-6 col-lg-3">
				<div class="widget-small primary coloured-icon">

					<div class="info">
					
				 <%=currentUser.getFirstName()%>
					</div>
				</div>
			</div>
			<br>
			
			<div class="info">
					<h3>Welcome to Camshaft's SubAdmin Panel</h3>
					<p>
					<h3><a href="index.jsp">Click to Continue</a></h3>	
					</p>
				</div>
		</h1>
	</center>




</body>
<%
	} else
		response.sendRedirect("empLogin.jsp");
%>
</html>	