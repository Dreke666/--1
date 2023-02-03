<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>  
    <title>后台左侧导航</title>
    <style type="text/css">
		.menu{
    		display:none;
    		margin-left:10px;
    	}
    	.left-nav{
    	  width:226px;
    	}
    	a{
    	  text-transform: none;
    	}
    </style>
    <script type="text/javascript">
    	function test(e){
  		$(e).style.display = $(e).style.display == 'block'? 'none':'block';
			var element = document.getElementById(e);
			element.style.display = element.style.display == 'block'? 'none':'block';
    	}
    </script>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/font-awesome/css/font-awesome.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/menuBox.css" />
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/menuBox.js"></script>
  </head>
  <body>
	
  	<%-- <ul>
  		<li>
		  	<a href="#" onclick="test('menu1')">分类管理
		  		<div id="menu1" class="menu">
		  			<a href="${pageContext.request.contextPath }/manager/addcategory.jsp" target="right">添加分类</a><br/>
				  	<a href="${pageContext.request.contextPath }/manager/CategoryServlet?method=listall" target="right">查看分类</a>
		  		</div>
  			</a> 
  		</li>
  		<br/><br/>
  		<li>
		  	<a href="#" onclick="test('menu2')">图书管理
		  		<div id="menu2" class="menu">
				  	 <a href="${pageContext.request.contextPath }/manager/BookServlet?method=addUI" target="right">添加图书</a><br/>
				  	 <a href="${pageContext.request.contextPath }/manager/BookServlet?method=list" target="right">查看图书</a>
			  	</div>
  			</a> 
  		</li>
  		<br/><br/>
  		<li>
		  	<a href="#" onclick="test('menu3')">订单管理
		  		<div id="menu3" class="menu">
				  	 <a href="${pageContext.request.contextPath }/manager/ListOrderServlet?state=false" target="right">未发货订单</a><br/>
				  	 <a href="${pageContext.request.contextPath }/manager/ListOrderServlet?state=true" target="right">已发货订单</a>
				</div>
  			</a> 
  		</li>
  		<br/><br/>
  	</ul> --%>
  	<div id="leftNav" class="left-nav">
      <div id="menuBox02" class="menuBox">
				<div class="spMenuBox">
					<div class="spMenuItem">
						<div class="spMenu">
							<i class="fa fa-chrome"></i>
							<span>分类管理</span>
							<i class="fa fa-2x fa-angle-down"></i>
						</div>
						<div class="subMenuBox">
							<div><span class="subMenu"><a href="${pageContext.request.contextPath }/manager/addcategory.jsp" target="right">添加分类</a></span></div>
							<div><span class="subMenu"><a href="${pageContext.request.contextPath }/manager/CategoryServlet?method=listall" target="right">查看分类</a></span></div>
						</div>
					</div>
					<div class="spMenuItem">
						<div class="spMenu">
							<i class="fa fa-chrome"></i>
							<span>图书管理</span>
							<i class="fa fa-2x fa-angle-down"></i>
						</div>
						<div class="subMenuBox">
							<div><span class="subMenu"> <a href="${pageContext.request.contextPath }/manager/BookServlet?method=addUI" target="right">添加图书</a></span></div>
							<div><span class="subMenu"><a href="${pageContext.request.contextPath }/manager/BookServlet?method=list" target="right">查看图书</a></span></div>
						</div>
					</div>
					<div class="spMenuItem">
						<div class="spMenu">
							<i class="fa fa-chrome"></i>
							<span>订单管理</span>
							<i class="fa fa-2x fa-angle-down"></i>
						</div>
						<div class="subMenuBox">
							<div><span class="subMenu"> <a href="${pageContext.request.contextPath }/manager/ListOrderServlet?state=false" target="right">未发货订单</a></span></div>
							<div><span class="subMenu"><a href="${pageContext.request.contextPath }/manager/ListOrderServlet?state=true" target="right">已发货订单</a></span></div>
						</div>
					</div>
					<div class="spMenuItem">
						<div class="spMenu">
							<i class="fa fa-chrome"></i>
							<span>评论管理</span>
							<i class="fa fa-2x fa-angle-down"></i>
						</div>
						<div class="subMenuBox">
							<div><span class="subMenu"> <a href="${pageContext.request.contextPath }/manager/comment.jsp" target="right">评论</a></span></div>
						</div>
					</div>
				</div>
			</div>
		</div>
  </body>
</html>
<script>
      $().ready(function() {
			//initLeftNavHeight();
			initMenu();
		})
	    /**初始化左侧导航栏高度**/
		function initLeftNavHeight() {
			initHeight();

			function initHeight() {
				var total = document.documentElement.clientHeight;
				var topHeight = $("#top").height();
				$("#leftNav").height(total - topHeight);
			}

			document.body.onresize = function() {
				initHeight();
			}
		}
		/**初始化菜单选项**/
		function initMenu() {
			//配置第二个手风琴的基本参数
			var config02 = {
				//配置菜单的MenuBoxId
				menuBoxId: "#menuBox02",
				//是否可以打开多个上级菜单
				multiple: false,
				//初始化打开的上级菜单的index数组
				openIndex: [-1, 1]
			}
			menuBox.init(config02);
		}
</script>