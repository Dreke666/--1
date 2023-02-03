<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bookshop</title>

<!-- Bootstrap -->
<link href="${pageContext.request.contextPath }/assets/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/assets/css/font-awesome.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/assets/css/animate.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/assets/css/main.min.css" rel="stylesheet">

<!-- Favicon -->
<link rel="shortcut icon" href="${pageContext.request.contextPath }/assets/images/favicon.ico">

<link href="${pageContext.request.contextPath }/css/css.css" rel="stylesheet">
</head>
<body>
	<div id="wrapper">
		<div id="page-content-wrapper" class="st-pusher">
			<div class="st-pusher-after"></div>
			<header class="header">
				<nav class="navbar navbar-bookshop navbar-static-top"
					role="navigation">
					<div class="container">
						<div class="row">
							<div class="col-md-5 hidden-xs hidden-sm"></div>
							<!-- /.col -->
							<div class="col-md-3 col-xs-10 col-sm-10 navbar-left">
							</div>
							<!-- /.col -->
							<div class="col-md-4 col-sm-2">
							  <c:if test="${user==null }"> 
								<ul class="nav navbar-nav navbar-right">
									<li class="hidden-xs hidden-sm"><a
										href="${pageContext.request.contextPath }/client/login.jsp">登陆</a></li>
									<li class="hidden-xs hidden-sm"><a
										href="${pageContext.request.contextPath }/client/register.jsp">注册</a></li>
								</ul>
							</c:if>
							<c:if test="${user!=null }"> 
								<ul class="nav navbar-nav navbar-right">
								 <li class="hidden-xs hidden-sm"> <a href="${pageContext.request.contextPath }/client/IndexServlet?method=getAll" > 欢迎您：${user.username }</a></li>
									<li class="hidden-xs hidden-sm">
									   <a href="${pageContext.request.contextPath }/client/mycart.jsp" >查看购物车</a></li>
									<li class="hidden-xs hidden-sm"><a href="${pageContext.request.contextPath }/client/ClientListOrderServlet?userid=${user.id}">查看订单</a></li>
								   <li class="hidden-xs hidden-sm"> <a href="${pageContext.request.contextPath }/client/LoginOutServlet" >注销</a></li>
								</ul>
							</c:if>
								<!-- /.nav -->
							</div>
							<!-- /.col -->
						</div>
						<!-- /.row -->
					</div>
					<!-- /.container -->
				</nav>
				<!-- /.navbar -->


				<!-- Modal -->
			
				<!-- /.modal -->

				<!-- Modal -->
				<div id="modal-login-small"
					class="modal fade login login-xs hidden-sm hidden-lg" tabindex="-1"
					role="dialog" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-body">
								<div class="text-center">
									<div class="logo-holder">
										<h1 class="logo">订单</h1>
										<div class="logo-subtitle">
											<span>World of books</span>
										</div>
										<!-- /.logo-subtitle -->
									</div>

									<form role="form" class="inner-top-50">
										<div class="form-group">
											<label for="entername" class="sr-only">Email</label> <input
												type="email" class="form-control bookshop-form-control"
												id="entername" placeholder="Hezy Theme">
										</div>
										<div class="form-group">
											<label for="enterpassword" class="sr-only">Password</label> <input
												type="password" class="form-control bookshop-form-control"
												id="enterpassword">
										</div>

										<button type="button"
											class="btn btn-primary btn-block btn-uppercase">Login</button>
										<a href="#" class='forgot-password'>forgot password</a>
									</form>
								</div>
							</div>
							<!-- /.modal-body -->
							<div class="modal-footer">
								<div class="text-center">
									<ul class='social-list text-center'>
										<li><a href="#" class="facebook"></a></li>
										<li><a href="#" class="google-plus"></a></li>
										<li><a href="#" class="twitter"></a></li>
										<li><a href="#" class="pinterest"></a></li>
									</ul>
									<!-- /.social-list -->
								</div>
							</div>
							<!-- /.modal-footer -->
							<a href="#" data-dismiss="modal" class="remove-icon"><i
								class="fa fa-times"></i></a>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal-dialog -->
				</div>
				<!-- /.modal -->
				<div class="main-header">
					<div class="container">
						<div class="row">
							<div class="col-xs-12 col-sm-4 col-md-4 top-search-holder m-t-10">
								</div>
							<!-- /.top-search-holder -->

							<div class="col-xs-12 col-sm-4 col-md-4 text-center logo-holder">
								<!-- ============================================== LOGO ============================================== -->
								<a href="#">
									<h1 class="logo">订单列表</h1>
									<div class="logo-subtitle">
										<span>my order</span>
									</div>
									<!-- /.logo-subtitle -->
								</a>
								<!-- ============================================== LOGO : END ============================================== -->
							</div>
							<!-- /.logo-holder -->

							<div
								class="col-xs-12  col-md-2 header-shippment hidden-sm m-t-10">
								</div>
							<!-- /.header-shippment -->

							<div
								class="col-xs-12 col-sm-4 col-md-2 animate-dropdown1 top-cart-row m-t-10">
							
							</div>
							<!-- /.top-cart-row -->
						</div>
						<!-- /.row -->

					</div>
					<!-- /.container -->

				</div>
				<!-- /.main-header -->
				<!-- ============================================== NAVBAR : END ============================================== -->
			</header>
			<!-- ============================================== HEADER : END ============================================== -->
			<div class="content wow fadeInUp">
				<div class="container">
					<div class="row">
						
						<!-- /.breadcrumb -->

						<div class="divider">
							<img class="img-responsive" src="http://localhost:8080/bookstore/assets/images/shadow.png" alt="">
						</div>
						<!-- /.divider -->
					</div>
					<!-- /.row -->
					<div class="row m-t-20 books-with-sidebar">
						<div class="col-md-12 ">
							<div class="module inner-top-sm wow fadeInUp"
								id="books-by-subject">
								<div class="module-body">
									<div class="row books text-center">
											    <div class="col-md-12 col-sm-12 ">
															<c:if test="${user == null }">
												  		对不起，请先登录
												  	</c:if>
												  	<c:if test="${orders[0].id == null }">
												  	    <h1>没有订单</h1>
												  	</c:if>
												  	<c:if test="${orders[0].id != null }">
												  	
												    <table class="table" style="text-align: center;">
												    	<tr>
												    		<td>订单号</td>
												    		<td>订单人</td>
												    		<td>订单时间</td>
												    		<td>订单总价</td>
												    		<td>订单状态</td>
												    		<td>操作</td>
												    	</tr>
												    	<c:forEach var="order" items="${orders }">
												    		<tr>
												    			<td>${order.id }</td>
													    		<td>${order.user.username }</td>
													    		<td>${order.ordertime }</td>
													    		<td>${order.price }</td>
													    		<td>${order.state==true?'已发货':'未发货' }</td>
													    		<td>
													    			<a href="${pageContext.request.contextPath }/client/ClientOrderDetailServlet?orderid=${order.id}">查看明细</a>
													    			<!-- <a href="#">删除</a> -->
													    		</td>
												    		</tr>
												    	</c:forEach>  	
													</table>
													</c:if>
												</div>
										<!-- /.col -->
										
									</div>
									<!-- /.row -->
									
								</div>
								<!-- /.module-body -->
							</div>
							<!-- /.module -->
							<div class="divider">
								<img class="img-responsive" src="http://localhost:8080/bookstore/assets/images/shadow.png"
									alt="">
							</div>
							<!-- /.divider -->
						</div>
						<!-- /.col -->
					<%-- 	<div class="col-md-3 col-md-pull-9">
							<aside class="sidebar">
								<!-- ============================================== CUSTOMER FAVOURITES ============================================== -->
								<div class="sidebar-module">
									<div class="sidebar-module-heading">
										<h4 class="sidebar-module-title">分类列表</h4>
									</div>
									<div class="sidebar-module-body clearfix">
										<ul class="list-unstyled">
											<c:forEach var="category" items="${categories }">
								    			<li>
								    				<a href="${pageContext.request.contextPath }/client/IndexServlet?method=listBookWithCategory&category_id=${category.id}">${category.name }</a>
								    			</li>
								    		</c:forEach>
										
										</ul>
									</div>
								</div>
							</aside>
						</div> --%>
					</div>
					<!-- /.row -->
					
				</div>
				<!-- /.container -->
			</div>
			<!-- /.content -->
			<!-- ============================================== FOOTER ============================================== -->
			<footer class="footer clearfix">
				<div class="margin-top-10">
					<div class="container inner-top-vs">
						<!-- ============================================== FOOTER-TOP ============================================== -->
						<div class="row">
							<div class="col-md-3 col-sm-4">
								<div class="footer-module">
									<h4 class="footer-module-title">About this site</h4>
									<div class="footer-module-body m-t-20 clearfix">
										<p>
											<span class="pull-left"><img
												src="http://localhost:8080/bookstore/assets/images/footer-logo.png" alt="" width="75"
												height="75"></span>A cras tincidunt, ut tellus et. Gravida
											scele risque, ipsum sed iacul is, nunc non namtellus.
											Placerat sed phasellus, purus purus elit. Cras ante eros.
											Erat vel. Donec vestibulum sed, vel euismod donec.
										</p>
									</div>
								</div>
							</div>
							<div class="col-md-3 col-sm-4">
								<div class="footer-module">
									<h4 class="footer-module-title">Categories</h4>
									<div class="footer-module-body clearfix">
										<ul class="list-unstyled link-list">
											<li><a href="#">Books</a></li>
											<li><a href="#">Text books</a></li>
											<li><a href="#">Nook books</a></li>
											<li><a href="#">Audiobooks</a></li>
											<li><a href="#">Magazines</a></li>
										</ul>
										<ul class="list-unstyled link-list">
											<li><a href="#">Movies</a></li>
											<li><a href="#">Music</a></li>
											<li><a href="#">Games</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="col-md-3 col-sm-4 clearfix ">
								<div class="footer-module">
									<h4 class="footer-module-title">Information</h4>
									<div class="footer-module-body clearfix">
										<ul class="list-unstyled link-list">
											<li><a href="#">Track Order</a></li>
											<li><a href="#">Delivery</a></li>
											<li><a href="#">Return Policy</a></li>
											<li><a href="#">Giftcards</a></li>
										</ul>

										<ul class="list-unstyled link-list">
											<li><a href="#">Contact Us</a></li>
											<li><a href="#">Store Locations</a></li>
											<li><a href="#">FAQ</a></li>
											<li><a href="#">Terms of Use</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="col-md-3 col-sm-12">
								<div class="footer-module">
									<h4 class="footer-module-title">connect</h4>
									<div class="footer-module-body clearfix">
										<ul class="clearfix list-unstyled footer-social-contact">
											<li><a href="#" class="fa fa-facebook" title="Facebook"></a></li>
											<li><a href="#" class="fa fa-pinterest"
												title="Pinterest"></a></li>
											<li><a href="#" class="fa fa-linkedin" title="Linkedin"></a></li>
											<li><a href="#" class="fa fa-twitter" title="Twitter"></a></li>
											<li><a href="#" class="fa fa-google-plus"
												title="Google Plus"></a></li>
											<li><a href="#" class="fa fa-rss" title="Rss"></a></li>
											<li><a href="#" class="fa fa-instagram"
												title="Instagram"></a></li>

										</ul>
									</div>
								</div>
							</div>
						</div>
						<!-- ============================================== FOOTER-TOP : END ============================================== -->
						<hr>
						<!-- ============================================== FOOTER-BOTTOM ============================================== -->
						<div class="row">
							<div class="col-md-12">
								<div class="pull-left">
									<ul class="payment-list list-unstyled">
										<li><a href="#"><img
												src="http://localhost:8080/bookstore/assets/images/payments/1.png" class="img-responsive"
												height="22" alt=""></a></li>

									</ul>
								</div>
								<p class="copyright-footer pull-right">
									&copy; 2019 Bookshop. All rights reserved. Made with love by <a
										href="#">Heztheme</a>
								</p>
							</div>
						</div>
						<!-- ============================================== FOOTER-BOTTOM : END ============================================== -->
					</div>
				</div>
			</footer>
			<!-- ============================================== FOOTER : END ============================================== -->
		</div>
		<!-- /.st-pusher -->
	</div>
	<!-- /#wrapper -->
	<script src="http://localhost:8080/bookstore/assets/js/jquery-1.11.2.min.js"></script>
	<script src="http://localhost:8080/bookstore/assets/js/bootstrap.min.js"></script>
	<script src="http://localhost:8080/bookstore/assets/js/bootstrap-hover-dropdown.min.js"></script>
	<script src="http://localhost:8080/bookstore/assets/js/owl.carousel.min.js"></script>
	<script src="http://localhost:8080/bookstore/assets/js/perfect-scrollbar.min.js"></script>
	<script src="http://localhost:8080/bookstore/assets/js/jquery-ui.min.js"></script>
	<script src="http://localhost:8080/bookstore/assets/js/jquery.customSelect.min.js"></script>
	<script src="http://localhost:8080/bookstore/assets/js/jquery.easing-1.3.min.js"></script>
	<script src="http://localhost:8080/bookstore/assets/js/wow.min.js"></script>
	<script src="http://localhost:8080/bookstore/assets/js/echo.min.js"></script>
	<script src="http://localhost:8080/bookstore/assets/js/scripts.js"></script>
</body>
</html>
