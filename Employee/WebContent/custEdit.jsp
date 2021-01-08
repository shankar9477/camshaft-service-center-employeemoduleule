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
<title>Edit Customer</title>
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
	<%@ page import="com.deo.Customerdeo,com.bean.Customerbean,com.servlet.CustomerServlet"%>
	<%
		String custid = request.getParameter("custid");
			Customerbean cc = Customerdeo.getRecordById(Integer.parseInt(custid));
	%>
	<form action="customerEdit.jsp" method="post">
		<%@ include file="header.jsp"%>
		<%@ include file="sidebar.jsp"%>


		<input type="hidden" name="custid" value="<%=cc.getCustid()%>" />


<div class="tile">
			<div class="form-group row">
         <label class="control-label col-md-3">Customer Name</label>
                  <div class="col-md-6">
                    <input type="text" name="custname"
					value="<%=cc.getCustname()%>">
				</div>
				</div>
               
                  <div class="form-group row">
                  <label class="control-label col-md-3">Customer Email</label>
                  <div class="col-md-6">
                <input type="text" name="custemail"
					value="<%=cc.getCustemail()%>">
                  </div>
                </div>
                

                <div class="form-group row">
                  <label class="control-label col-md-3">Password</label>
                  <div class="col-md-6">
                   <input type="text" name="custpassword"
					value="<%=cc.getCustpassword()%>">
                  </div>
                </div>
        
                <div class="form-group row">
                  <label class="control-label col-md-3">Address</label>
                  <div class="col-md-6">
                <input type="text" name="custaddress" value="<%=cc.getCustaddress()%>">
                  </div>
                </div>
                
                
                  <div class="form-group row">
                  <label class="control-label col-md-3">City</label>
                  <div class="col-md-6">
                <input type="text" name="custcity"
					value="<%=cc.getCustcity()%>">
                  </div>
                </div>
                

                <div class="form-group row">
                  <label class="control-label col-md-3">State</label>
                  <div class="col-md-6">
                   <input type="text" name="custstate"
					value="<%=cc.getCuststate()%>">
                  </div>
                </div>
        
                <div class="form-group row">
                  <label class="control-label col-md-3">Mobile No.</label>
                  <div class="col-md-6">
                <input type="text" name="custmobileno" value="<%=cc.getCustmobileno()%>">
                  </div>
                </div>
                
                
                </div>
                
          <div class="row">
                <div class="col-md-8 col-md-offset-3">
                <center>
                  <button class="btn btn-primary" type="submit" value="editcustomer" name="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Edit Customer</button>
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