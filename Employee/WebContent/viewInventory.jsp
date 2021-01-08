<!DOCTYPE html>
<%@page import="java.util.List"%>

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
<title>Inventory record</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Main CSS-->
<link rel="stylesheet" type="text/css" href="css/main.css">
<!-- Font-icon css-->
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript">
	function wm(id, t) {
		if (document.getElementById(id).value.length == 0) {
			alert(t + "will be filled out.");
		}
	}
</script>

</head>
<body class="app sidebar-mini rtl">

	<%@ page import="com.deo.Inventorydeo,com.bean.Inventorybean,java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<form name="form">
		<%@ include file="header.jsp"%>
		<%@ include file="sidebar.jsp"%>


		<main class="app-content">
		<div class="app-title">
			<div>
				<h1>
					<i class="fa fa-th-list"></i>Inventory
				</h1>
				<p></p>
			</div>
			<ul class="app-breadcrumb breadcrumb side">
				<li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
				<li class="breadcrumb-item">Tables</li>
				<li class="breadcrumb-item active"><a href="#">Part Details</a></li>
			</ul>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="text-right">
					<button type="button" class="btn btn-primary"
						onclick="window.location.href='addInv.jsp'">
						<i class="fa fa-plus" aria-hidden="true"></i>Add New Inventory
					</button>
				</div>
				<br>
				<div class="table responsive">
					<div class="tile-body">
						<%
							List<Inventorybean> list = Inventorydeo.getAllRecords();
							request.setAttribute("list", list);
						%>
						<table class="table table-hover table-bordered" id="sampleTable">

							<tr>
			<th>Part Id</th>
			<th>Part Name</th>
			<th>Brand Name</th>
			<th>Inward Date</th>
			<th>Outward Date</th>
			<th>Price</th>
			<th>Quantity</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		<c:forEach items="${list}" var="ic">
			<tr>
				<td>${ic.getPartid()}</td>
				<td>${ic.getPrname()}</td>
				<td>${ic.getPrbrandname()}</td>
				<td>${ic.getPrinwarddate()}</td>
				<td>${ic.getProutwarddate()}</td>
				<td>${ic.getPrprice()}</td>
				<td>${ic.getPrquantity()}</td>
				
				<td>
                    <button class="btn btn-primary btn-sm" type="button"  onclick="window.location.href='invEdit.jsp?partid=${ic.getPartid()}'">Edit</button>
                    </td>
            		<td>
                    <button class="btn btn-primary btn-sm" type="button" onclick="window.location.href='inventoryDelete.jsp?partid=${ic.getPartid()}'">Delete</button>
                </td>
				</tr>
		</c:forEach>
						</table>
					</div>
				</div>
			</div>
		</div>
		</form>
		</main>
		<!-- Essential javascripts for application to work-->
		<script src="js/jquery-3.2.1.min.js"></script>
		<script src="js/popper.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/main.js"></script>
		<!-- The javascript plugin to display page loading on top-->
		<script src="js/plugins/pace.min.js"></script>
		<!-- Page specific javascripts-->
		<!-- Data table plugin-->
		<script type="text/javascript"
			src="js/plugins/jquery.dataTables.min.js"></script>
		<script type="text/javascript"
			src="js/plugins/dataTables.bootstrap.min.js"></script>
		<script type="text/javascript">
			$('#sampleTable').DataTable();
		</script>
		<!-- Google analytics script-->
		<script type="text/javascript">
			if (document.location.hostname == 'pratikborsadiya.in') {
				(function(i, s, o, g, r, a, m) {
					i['GoogleAnalyticsObject'] = r;
					i[r] = i[r] || function() {
						(i[r].q = i[r].q || []).push(arguments)
					}, i[r].l = 1 * new Date();
					a = s.createElement(o), m = s.getElementsByTagName(o)[0];
					a.async = 1;
					a.src = g;
					m.parentNode.insertBefore(a, m)
				})(window, document, 'script',
						'//www.google-analytics.com/analytics.js', 'ga');
				ga('create', 'UA-72504830-1', 'auto');
				ga('send', 'pageview');
			}
		</script>
	
</body>
</html>