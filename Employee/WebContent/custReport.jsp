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
<title>Customer report</title>
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
		import="com.deo.Customerdeo,com.bean.Customerbean,com.servlet.CustomerServlet"%>
	<%
		String custid = request.getParameter("custid");
			Customerbean cc = Customerdeo.getRecordById(Integer.parseInt(custid));
	%>
	<form action="customerEdit.jsp" method="post">
		<%@ include file="header.jsp"%>
		<%@ include file="sidebar.jsp"%>
		<center>
			<div class="col-md-3"></div>
			<div class="col-md-5">
				<br>
				<div class="tile">
					<div class="form-group row">
						<label class="control-label col-md-6"><strong>Customer
								Id</strong></label>
						<div class="col-md-6">
							<lable><%=cc.getCustid()%></lable>
						</div>
					</div>

					<div class="form-group row">
						<label class="control-label col-md-6"><strong>Customer
								Name</strong></label>
						<div class="col-md-6">
							<lable><%=cc.getCustname()%></lable>
						</div>
					</div>

					<div class="form-group row">
						<label class="control-label col-md-6"><strong>Email
						</strong></label>
						<div class="col-md-6">
							<lable><%=cc.getCustemail()%></lable>
						</div>
					</div>

					<div class="form-group row">
						<label class="control-label col-md-6"><strong>Password
						</strong></label>
						<div class="col-md-6">
							<lable><%=cc.getCustpassword()%></lable>
						</div>
					</div>

					<div class="form-group row">
						<label class="control-label col-md-6"><strong>Address
								</strong></label>
						<div class="col-md-6">
							<lable><%=cc.getCustaddress()%></lable>
						</div>
					</div>

					<div class="form-group row">
						<label class="control-label col-md-6"><strong>City
						</strong></label>
						<div class="col-md-6">
							<lable><%=cc.getCustcity()%></lable>
						</div>
					</div>

					<div class="form-group row">
						<label class="control-label col-md-6"><strong>State
						</strong></label>
						<div class="col-md-6">
							<lable><%=cc.getCuststate()%></lable>
						</div>
					</div>

					<div class="form-group row">
						<label class="control-label col-md-6"><strong>Mobile No.
								</strong></label>
						<div class="col-md-6">
							<lable><%=cc.getCustmobileno()%></lable>
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