<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%
  String usr = (String) session.getAttribute("usrName");
  String checkRoom = (String) session.getAttribute("checkRoom");
  
  if(usr==null){
	  request.getRequestDispatcher("index.html").forward(request,response);
  }  %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<style>
/* 	  body {background-image: url("img/library-op.jpg");} */
.navbar {
	background-image: url("img/library-10.jpg");
}
</style>
<title>Libraries -Find a Spot</title>

<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/round-about.css" rel="stylesheet">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

	<!-- Navigation -->

	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">

		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<h1 style="color: white;">Find a Spot</h1>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li></li>
				</ul>
				<p style="text-align: right; font-size: 160%; color: white;">
				<%if(checkRoom == null){%>
					Hi! <%=usr%>
				<%}
				else{%>		
					Hi! <%=usr%>, Current Check Room: <%=checkRoom%> <small>(</small><a style="color: white;" href="checkOutServlet?checkout=yes"><ins><small>Check Out</small></ins></a><small>)</small>
				<%}%>
					<br> <a href="signoutServer" style="color: white;"><small><ins>Log Out</ins></small></a>
				</p>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>

	<!-- Page Content -->
	<div class="container">
	<!-- Quick Check In Row -->
		<div class="row">
			<div class="col-lg-12" style = "text-align: center">
				<h1 class="page-header">
					Quick Check <br>
				</h1>
				<form action="checkInServlet" method ="GET">
				<select name="rooms">
  				<option value="butler2">Butler 2nd Floor</option>
  				<option value="butler3">Butler 3rd Floor</option>
  				<option value="butler4">Butler 4th Floor</option>
  				<option value="butler5">Butler 5th Floor</option>
  				<option value="butler6">Butler 6th Floor</option> 				
  				<option value="nwc4">NWC 4th Floor</option>
  				<option value="nwc4">NWC 5th Floor</option>
  				<option value="avery1">Avery 1st Floor</option>
  				<option value="avery2">Avery 2nd Floor</option>
  				<option value="avery3">Avery 3rd Floor</option>
  				<option value="starr">Starr</option>
				<option value="lehman">Lehman</option>
				</select>
				<input class="btn btn-lg btn-primary" type="submit" value="Check In">
				</form>
			</div>
		</div>
		
		<!-- Team Members Row -->
		<div class="row">
			<div class="col-lg-12">
				<h2 class="page-header">Libraries</h2>
			</div>
			<div class="col-lg-4 col-sm-6 text-center">
				<img class="img-circle img-responsive img-center"
					src="img/ButlerLib.jpg" alt="" style="width:300px;height:200px">
				<h3>
					<a href ="libServlet?id=butler">Butler Library</a><br><!-- <small>Job Title</small> -->
				</h3>
				<!-- <p>What does this team member to? Keep it short! This is also a
					great spot for social links!</p> -->
			</div>
			<div class="col-lg-4 col-sm-6 text-center">
				<img class="img-circle img-responsive img-center"
					src="img/UrisLib.jpg" alt="" style="width:300px;height:200px">
				<h3>
					<a href ="libServlet?id=uris">Uris/Waston Library</a> <br><!-- <small>Job Title</small> -->
				</h3>
				<!-- <p>What does this team member to? Keep it short! This is also a
					great spot for social links!</p> -->
			</div>
			<div class="col-lg-4 col-sm-6 text-center">
				<img class="img-circle img-responsive img-center"
					src="img/averyLib.jpg" alt="" style="width:300px;height:200px">
				<h3>
					<a href ="libServlet?id=avery">Avery Library</a><br> <!-- <small>Job Title</small> -->
				</h3>
				<!-- <p>What does this team member to? Keep it short! This is also a
					great spot for social links!</p> -->
			</div>
			<div class="col-lg-4 col-sm-6 text-center">
				<img class="img-circle img-responsive img-center"
					src="img/NWCLib.jpg" alt="" style="width:300px;height:200px">
				<h3>
					<a href ="libServlet?id=nwc">Engineering and Science Library</a> <br><!-- <small>Job Title</small> -->
				</h3>
				<!-- <p>What does this team member to? Keep it short! This is also a
					great spot for social links!</p> -->
			</div>
			<div class="col-lg-4 col-sm-6 text-center">
				<img class="img-circle img-responsive img-center"
					src="img/StarrLib.jpg" alt="" style="width:300px;height:200px">
				<h3>
					<a href ="libServlet?id=starr">Starr Library</a> <br><!-- <small>Job Title</small> -->
				</h3>
				<!-- <p>What does this team member to? Keep it short! This is also a
					great spot for social links!</p> -->
			</div>
			<div class="col-lg-4 col-sm-6 text-center">
				<img class="img-circle img-responsive img-center"
					src="img/LehmanLib.jpg" alt="" style="width:300px;height:200px">
				<h3>
					<a href ="libServlet?id=lehman">Lehman Library</a> <br><!-- <small>Job Title</small> -->
				</h3>
				<!-- <p>What does this team member to? Keep it short! This is also a
					great spot for social links!</p> -->
			</div>
		</div>

		<hr>

		<!-- Q & A Row -->
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">
					Ask It! <br><small><small>Still couldn't decide where to study? Ask
						it! get real-time responses from all libraries!</small></small>
				</h1>
				<p>Insert a button to redirect? </p>
			</div>
		</div>

		<!-- Footer -->
		<footer>
			<div class="row">
				<div class="col-lg-12">
					<p>Copyright &copy; Find Your Spot@Columbia 2015</p>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
		</footer>

	</div>
	<!-- /.container -->

	<!-- jQuery -->
	<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>

</body>

</html>
