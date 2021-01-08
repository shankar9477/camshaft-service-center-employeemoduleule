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
<title>Edit Job Card</title>
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
		import="com.deo.Jobcarddeo,com.bean.Jobcardbean,com.servlet.JobcardServlet"%>
	<%
		String jid = request.getParameter("jid");
		Jobcardbean jc = Jobcarddeo.getRecordById(Integer.parseInt(jid));
	%>
	<form action="jobcardEdit.jsp" method="post">
		<%@ include file="header.jsp"%>
		<%@ include file="sidebar.jsp"%>


		<input type="hidden" name="jid" value="<%=jc.getJid()%>" />


<div class="tile">
			<div class="form-group row">
         <label class="control-label col-md-3">Vehicle No</label>
                  <div class="col-md-6">
                    <input type="text" name="jvehino"
					value="<%=jc.getJvehino()%>">
				</div>
				</div>
               
                  <div class="form-group row">
                  <label class="control-label col-md-3">Job Date</label>
                  <div class="col-md-6">
                <input type="text" name="jdate"
					value="<%=jc.getJdate()%>">
                  </div>
                </div>
                

                <div class="form-group row">
                  <label class="control-label col-md-3">Meter Reading</label>
                  <div class="col-md-6">
                   <input type="text" name="jmeterreading"
					value="<%=jc.getJmeterreading()%>">
                  </div>
                </div>
        
                <div class="form-group row">
                  <label class="control-label col-md-3">Fuel</label>
                  <div class="col-md-6">
                <input type="text" name="jfuel" value="<%=jc.getJfuel()%>">
                  </div>
                </div>
                <div class="form-group row">
                  <label class="control-label col-md-3">Employee Id</label>
                  <div class="col-md-6">
                <input type="text" name="eid" value="<%=jc.getEid()%>">
                  </div>
                </div>
                <%-- <div class="form-group row">
                  <label class="control-label col-md-3">Part Id</label>
                  <div class="col-md-6">
               <input type="text" name="partid"
					value="<%=jc.getPartid()%>">
                  </div>
                </div>
                 --%><div class="form-group row">
                  <label class="control-label col-md-3">Customer Id</label>
                  <div class="col-md-6">
                <input type="text" name="cid" value="<%=jc.getCid()%>">
                  </div>
                </div>
          <div class="row">
                <div class="col-md-8 col-md-offset-3">
                <center>
                  <button class="btn btn-primary" type="submit" value="editjobcard" name="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Edit Job Card</button>
                </center>
                </div>
              </div>
        </div>
        </div>
           </div>



	</form>
	</main>
</body>
</html>