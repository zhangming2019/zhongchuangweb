<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<base href="${pageContext.request.contextPath}">
<title>用户登录页面</title>
<link href="${pageContext.request.contextPath}/PUBLIC/bs/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/PUBLIC/JQuery/jquery-2.1.4.min.js"></script>
<script src="${pageContext.request.contextPath}/PUBLIC/bs/dist/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/JS/login.js"></script>
</head>

<div class="container" style="margin-top:10% ">
	<nav class="navbar navbar-default navbar-fixed-top">
		  <div class="container-fluid">
		    <div class="navbar-header">
		    </div>
   		 <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		 <p class="navbar-text">欢迎来到众创项目</p>     	 
     	 <ul class="nav navbar-nav navbar-right">
        	<li class="dropdown">
          		<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="glyphicon glyphicon-user"></i><span class="hidden-sm hidden-xs">用户登录</span> <span class="caret"></span></a>
          	    <ul class="dropdown-menu">
	            <li><a href="${pageContext.request.contextPath}/servlet/ShowAdminLoginPageServlet">管理员登录</a></li>
	             <li role="separator" class="divider"></li>	
	            <li><a href=${pageContext.request.contextPath}/servlet/ShowRegisterPageServlet>用户注册</a></li>
	          </ul>
	        </li>
	      </ul>
	    </div><!-- /.navbar-collapse -->
	  </div><!-- /.container-fluid -->
	</nav>
	<div class="row">
		<div class="col-md-4 col-md-offset-4">
			<div class="login-panel panel panel-default">
				<div class="panel-heading">
                     <h3 class="panel-title">用户登录 </h3>
                </div>				
						<div class="panel-body">
									<form class="form-horizontal" method=post action="${pageContext.request.contextPath}/servlet/LoginServlet" id="LoginForm" role="form">
											<field>	
												<div class="input-group" id="inputUserNo">
															<span class="input-group-addon"><i class="glyphicon glyphicon-user "></i></span>
															<input type="text" class="form-control" name="userNo" id="userNo" placeholder="学号" onblur="check_userNo()" tabIndex="1" autofocus onclick="tip_userNo()" tabIndex="1" autofocus data-toggle="popover" title="账号验证"  data-container="body">
															<span class="glyphicon glyphicon-ok form-control-feedback" id="userNoSuccess" style="visibility:hidden"></span>
				                                    		<span class="glyphicon glyphicon-remove form-control-feedback" id="userNoError" style="visibility:hidden"></span>
												</div>
												<div class="clearfix"></div><br>
												<div class="input-group" id="inputPassword">
														<span class="input-group-addon"><i class="glyphicon glyphicon-lock "></i></span>
														<input  class=form-control type="password"  name=password id=password 	placeholder="密码" onblur="check_password()" tabIndex="2" onclick="tip_password()" datatoggle="popover" title="密码验证" data-container="body">
														<span class="glyphicon glyphicon-ok form-control-feedback" id="passwordSuccess" style="visibility:hidden"></span>
			                                    		<span class="glyphicon glyphicon-remove form-control-feedback" id="passwordError" style="visibility:hidden"></span>
												</div>
												<div class="clearfix"></div><br>
												<div class="form-group" id="inputVerifyCode">
													<div class="col-sm-7">
														<input class="form-control" type="text" name="verifyCode" id="verifyCode" placeholder="验证码" onblur="check_verifyCode()" tabIndex="3">
														<span class="glyphicon glyphicon-ok form-control-feedback" id="verifyCodeSuccess" style="visibility:hidden"></span>
			                                    		<span class="glyphicon glyphicon-remove form-control-feedback" id="verifyCodeError" style="visibility:hidden"></span>
													</div>
													<div class="col-sm-5">
														<img src="${pageContext.request.contextPath}/servlet/VerifyCodeServlet" style="width: 100%" onclick="this.src=this.src + '?' + Math.random()"/>
													</div>
												</div>
												<div class="form-group form-actions"> 
													<div class="col-lg-12">
														<button type="button" class="btn btn-lg btn-danger btn-block" onclick="submitlogin()"  tabIndex="4"><span class="glyphicon glyphicon-off"></span> 登录</button>
													</div>
												</div>
												<div class="form-group" hidden>
												<input id="base" value="${pageContext.request.contextPath}">
												</div>
											</field>
									</form>
						</div>
				</div>
			</div>
		</div>
</div>
</body>

</html>