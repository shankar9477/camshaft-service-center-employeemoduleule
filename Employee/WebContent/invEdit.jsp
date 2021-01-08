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
<title>Edit Inventory</title>
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
	<%@ page import="com.deo.Inventorydeo,com.bean.Inventorybean,com.servlet.InventoryServlet"%>
	<%
		String partid = request.getParameter("partid");
		Inventorybean ic = Inventorydeo.getRecordById(Integer.parseInt(partid));
	%>
	<form action="inventoryEdit.jsp" method="post">
		<%@ include file="header.jsp"%>
		<%@ include file="sidebar.jsp"%>


		<input type="hidden" name="partid" value="<%=ic.getPartid()%>" />


<div class="tile">
			<div class="form-group row">
         <label class="control-label col-md-3">Part Name</label>
                  <div class="col-md-6">
                    <input type="text" name="prname"
					value="<%=ic.getPrname()%>">
				</div>
				</div>
               
                  <div class="form-group row">
                  <label class="control-label col-md-3">Brand Name</label>
                  <div class="col-md-6">
                <input type="text" name="prbrandname"
					value="<%=ic.getPrbrandname()%>">
                  </div>
                </div>
                

                <div class="form-group row">
                  <label class="control-label col-md-3">Inward Date</label>
                  <div class="col-md-6">
                   <input type="text" name="prinwarddate"
					value="<%=ic.getPrinwarddate()%>">
                  </div>
                </div>
        
                <div class="form-group row">
                  <label class="control-label col-md-3">Outward Date</label>
                  <div class="col-md-6">
                <input type="text" name="proutwarddate" value="<%=ic.getProutwarddate()%>">
                  </div>
                </div>
                
                <div class="form-group row">
                  <label class="control-label col-md-3">Price</label>
                  <div class="col-md-6">
                <input type="text" name="prprice" value="<%=ic.getPrprice()%>">
                  </div>
                </div>
                
                <div class="form-group row">
                  <label class="control-label col-md-3">Quantity</label>
                  <div class="col-md-6">
               <input type="text" name="prquantity"
					value="<%=ic.getPrquantity()%>">
                  </div>
                </div>
                
          <div class="row">
                <div class="col-md-8 col-md-offset-3">
                <center>
                  <button class="btn btn-primary" type="submit" value="editinventory" name="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Edit Inventory</button>
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