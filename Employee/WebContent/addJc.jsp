<!DOCTYPE html>
<html lang="en">
  <head>
    <meta name="description" content="Vali is a responsive and free admin theme built with Bootstrap 4, SASS and PUG.js. It's fully customizable and modular.">
    <!-- Twitter meta-->
    <meta property="twitter:card" content="summary_large_image">
    <meta property="twitter:site" content="@pratikborsadiya">
    <meta property="twitter:creator" content="@pratikborsadiya">
    <!-- Open Graph Meta-->
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="Vali Admin">
    <meta property="og:title" content="Vali - Free Bootstrap 4 admin theme">
    <meta property="og:url" content="http://pratikborsadiya.in/blog/vali-admin">
    <meta property="og:image" content="http://pratikborsadiya.in/blog/vali-admin/hero-social.png">
    <meta property="og:description" content="Vali is a responsive and free admin theme built with Bootstrap 4, SASS and PUG.js. It's fully customizable and modular.">
    <title>Add Job Card</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Main CSS-->
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <!-- Font-icon css-->
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
 <style type="text/css">
 .footersection
{
	background-color: #009688;
}
 </style>
  <script type="text/javascript">
  function wm(id,t) 
  {
	  if(document.getElementById(id).value.length==0)
		  {
		  	alert(t+"will be filled out");
		  }
	
}
  </script>
  </head>
  <body class="app sidebar-mini rtl">
<%@ include file="header.jsp" %>
	
	<%@ include file="sidebar.jsp" %>	
	

 <main class="app-content">
      <div class="app-title">
        <div>
          <h1><i class="fa fa-edit"></i> Add Job Card</h1>
          <p>Job Card Details</p>
        </div>
        <ul class="app-breadcrumb breadcrumb">
          <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
          
        </ul>
      </div>
      
        <div class="col-md-3 col-lg-12 col-md-3">
          <div class="tile">
            <h3 class="tile-title">Job Card Form</h3>
            <div class="tile-body">
              <form class="form-horizontal" role="form" action="JobcardServlet" method="post">
                <div class="form-group row">
                  <label class="control-label col-md-3">Vehicle No*</label>
                  <div class="col-md-4">
                    <input class="form-control" type="text" id="jvehino" name="vehicleno" required="required">
                  </div>
                </div>
                
                <div class="form-group row">
                  <label class="control-label col-md-3">Job Date</label>
                  <div class="col-md-4">
                    <input class="form-control" type="date" id="jdate" name="jobdate" required>
                  </div>
                </div>
                
                <div class="form-group row">
                  <label class="control-label col-md-3">Meter Reading*</label>
                  <div class="col-md-4">
                    <input class="form-control" type="text" id="meterreading" name="meterreading" required >
                  </div>
                </div>
               
                <div class="form-group row">
                  <label class="control-label col-md-3">Fuel*</label>
                  <div class="col-md-4">
                <input class="form-control" type="text" id="jfuel" name="fuel" required >
                  </div>
                </div>
                
                
                <div class="form-group row">
                  <label class="control-label col-md-3">Employee Id</label>
                  <div class="col-md-4">
                <input class="form-control" type="text" id="eid" name="employeeid" required >
                  </div>
                </div>
                
<!--                 
                <div class="form-group row">
                  <label class="control-label col-md-3">Part Id</label>
                  <div class="col-md-4">
                <input class="form-control" type="text" id="partid" name="partid" required >
                  </div>
                </div>
                
 -->                <div class="form-group row">
                  <label class="control-label col-md-3">Customer Id</label>
                  <div class="col-md-4">
                <input class="form-control" type="text" id="cid" name="customerid" required >
                  </div>
                </div>
          
          
                
                
            
            <div class="tile-footer">
              <div class="row">
                <div class="col-md-8 col-md-offset-3">
                <center>
                  <button class="btn btn-primary" type="submit" value="save" name="submit" onclick="window.location.href='viewJobcard.jsp'"><i class="fa fa-fw fa-lg fa-check-circle"></i>Save</button>
                </center>
                </div>
              </div>
            </div>
            <br><br>
            <!-- *************footer part********** -->
					<center> please contact on +91 7878787878 </center>
					<div class="footersection">
						<center style="color: white;">
							
								Address: street , city, state, pincode.<br>
								Tel: 020 00 00 00 00 Fax: 0-0000-000-000 Email: email@gmail.com Web: www.camshaft.com 
							
						</center>
					</div>
					<!-- //footer part -->
					
            </form>
          </div>
        </div>
          
          </div>
          
    </main>
    <!-- Essential javascripts for application to work-->
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
    <!-- The javascript plugin to display page loading on top-->
    <script src="js/plugins/pace.min.js"></script>
    <!-- Page specific javascripts-->
    <!-- Google analytics script-->
    <script type="text/javascript">
      if(document.location.hostname == 'pratikborsadiya.in') {
      	(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      	(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      	m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      	})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
      	ga('create', 'UA-72504830-1', 'auto');
      	ga('send', 'pageview');
      }
    </script>
  </body>
</html>