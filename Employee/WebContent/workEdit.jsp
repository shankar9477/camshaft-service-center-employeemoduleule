<!DOCTYPE html>
<%@page import="com.bean.Workorderbean"%>
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
<title>Edit Work Order</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Main CSS-->
<link rel="stylesheet" type="text/css" href="css/main.css">
<!-- Font-icon css-->
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<body class="app sidebar-mini rtl">

	<main class="app-content"> 
	<%@ page import="com.deo.Workorderdeo,com.bean.Workorderbean,com.servlet.WorkorderServlet"%>
	<%
		String wid = request.getParameter("wid");
		Workorderbean wc =Workorderdeo.getRecordById(Integer.parseInt(wid));
	%>
	<form action="workorderEdit.jsp" method="post">
		<%@ include file="header.jsp"%>
		<%@ include file="sidebar.jsp"%>


		<input type="hidden" name="wid" value="<%=wc.getWid()%>" />


<div class="tile">
			<div class="form-group row">
         <label class="control-label col-md-3">Work Order Name</label>
                  <div class="col-md-6">
                    <input type="text" name="wname"
					value="<%=wc.getWname()%>">
				</div>
				</div>
               
                  <div class="form-group row">
                  <label class="control-label col-md-3">Work Date</label>
                  <div class="col-md-6">
                <input type="date" name="wdate"
					value="<%=wc.getWdate()%>">
                  </div>
                </div>
                

                <div class="form-group row">
                  <label class="control-label col-md-3">Last Service</label>
                  <div class="col-md-6">
                   <input type="text" name="wlastservice"
					value="<%=wc.getWlastservice()%>">
                  </div>
                </div>
        
                <div class="form-group row">
                  <label class="control-label col-md-3">Vehicle No.</label>
                  <div class="col-md-6">
                <input type="text" name="wvehino" value="<%= wc.getWvehino()%>">
                  </div>
                </div>
               
                <div class="form-group row">
                  <label class="control-label col-md-3">Estimated Amount</label>
                  <div class="col-md-6">
                <input type="text" name="westiamt" value="<%= wc.getWestiamt()%>">
                  </div>
                </div>
               
                <div class="form-group row">
                  <label class="control-label col-md-3">Expected Time</label>
                  <div class="col-md-6">
                <input type="text" name="wexptime" value="<%= wc.getWexptime()%>">
                  </div>
                </div>
               
          <div class="row">
                <div class="col-md-8 col-md-offset-3">
                <center>
                  <button class="btn btn-primary" type="submit" value="submit" name="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Edit Work Order</button>
                </center>
                </div>
              </div>
        </div>
       
         



	</form>
	</main>
</body>
</html>