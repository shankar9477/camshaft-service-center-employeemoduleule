<!DOCTYPE html>
<html lang="en">
<head>
<meta name="description"
	content="Vali is a responsive and free admin theme built with Bootstrap 4, SASS and PUG.js. It's fully customizable and modular.">
<!-- Twitter meta-->
<meta property="twitter:card" content="summary_large_image">
<meta property="twitter:site" content="@pratikborsadiya">
<meta property="twitter:creator" content="@pratikborsadiya">
<!-- Open Graph Meta-->
<meta property="og:type" content="website">
<meta property="og:site_name" content="Vali Admin">
<meta property="og:title" content="Vali - Free Bootstrap 4 admin theme">
<meta property="og:url"
	content="http://pratikborsadiya.in/blog/vali-admin">
<meta property="og:image"
	content="http://pratikborsadiya.in/blog/vali-admin/hero-social.png">
<meta property="og:description"
	content="Vali is a responsive and free admin theme built with Bootstrap 4, SASS and PUG.js. It's fully customizable and modular.">
<title>Technician</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Main CSS-->
<link rel="stylesheet" type="text/css" href="css/main.css">
<!-- Font-icon css-->
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<body class="app sidebar-mini rtl">

	<main class="app-content"> <%@ page
		import="com.deo.Techniciandeo,com.bean.Technicianbean,com.servlet.TechnicianServlet"%>
	<%
		String techid = request.getParameter("techid");
		Technicianbean tc = Techniciandeo.getRecordById(Integer.parseInt(techid));
	%>
	<form action="technicianEdit.jsp" method="post">
		<%@ include file="header.jsp"%>
		<%@ include file="sidebar.jsp"%>
		<center>
			<div class="col-md-3"></div>
			<div class="col-md-5">
			<br>
				<div class="tile">
					<div class="form-group row">
						<label class="control-label col-md-6">Technician Id</label>
						<div class="col-md-6">
							<lable><%=tc.getTechid()%></lable>
						</div>
					</div>


					<div class="form-group row">
						<label class="control-label col-md-6">Technician Name</label>
						<div class="col-md-6">
							<label><%=tc.getTechname()%></label>
						</div>
					</div>

					<div class="form-group row">
						<label class="control-label col-md-6">Technician Email</label>
						<div class="col-md-6">
							<lable><%=tc.getTechemail()%></lable>
						</div>
					</div>


					<div class="form-group row">
						<label class="control-label col-md-6">Technician Address</label>
						<div class="col-md-6">
							<lable><%=tc.getTechaddress()%></lable>
						</div>
					</div>

					<div class="form-group row">
						<label class="control-label col-md-6">Mobile No</label>
						<div class="col-md-6">
							<lable><%=tc.getTechmobileno()%></lable>
						</div>
					</div>
					
					<div class="form-group row">
						<label class="control-label col-md-6">Gender</label>
						<div class="col-md-6">
							<lable><%=tc.getTechgender()%></lable>
						</div>
					</div>
					
				</div>
			</div>

			<div class="col-md-3"></div>
						<div class="row d-print-none mt-2">
					<div class="col-md-12">
						<a class="btn btn-primary" href="javascript:window.print();"
							target="_blank"> <i class="fa fa-print"></i> Print
						</a>
					</div>
					</div>
				
		</center>





	</form>
	</main>
</body>
</html>