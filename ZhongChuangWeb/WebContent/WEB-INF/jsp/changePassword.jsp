<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<script src="${pageContext.request.contextPath}/JS/changePassword.js"></script>
<%@ include file="/WEB-INF/jsp/adminHeader.jsp" %>
<div class="col-lg-offset-1 col-lg-10" style="margin-top:10%">
				<div class=row>
								<div class="col-lg-12">
									<form class=form-horizontal method=post action="${pageContext.request.contextPath}/servlet/admin/ChangePasswordServelt" id="changePasswodForm" role="form">	
										<div class="form-group" id="inputadminUserNo">
										<label class="control-label col-sm-4 sr-only" for="adminuserNo">admin</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" name="adminuserNo" id="adminuserNo" placeholder="管理员账号" onblur="check_adminuserNo()" tabIndex="1" autofocus>
											<span class="glyphicon glyphicon-ok form-control-feedback" id="adminuserNoSuccess" style="visibility:hidden"></span>
                                    		<span class="glyphicon glyphicon-remove form-control-feedback" id="adminuserNoError" style="visibility:hidden"></span>
										</div>
										<span class="col-sm-3" style="padding: 0"><p id="adminuserNoMessage" style="color: red; margin: 0%"></p></span>
									</div>
									
									<div class=form-group id="inputadminPassword">
											<label class="control-label col-sm-4 sr-only" for="adminpassword">旧密码</label>
											<div class=col-sm-4>										
												<input  class=form-control type="password"  name=adminpassword  id=adminpassword 	placeholder="旧密码" onblur="check_adminpassword()" tabIndex="2">
												<span class="glyphicon glyphicon-ok form-control-feedback" id="adminpasswordSuccess" style="visibility:hidden"></span>
	                                    		<span class="glyphicon glyphicon-remove form-control-feedback" id="adminpasswordError" style="visibility:hidden"></span>
											</div>
											<span class="col-sm-3" style="padding: 0"><p id="adminpasswordMessage" style="color: red; margin: 0%"></p></span>
									</div>

									<div class=form-group id="inputadminNewPassword">
											<label class="control-label col-sm-4 sr-only" for="adminNewpassword">新密码</label>
											<div class=col-sm-4>										
												<input  class=form-control type="password"  name=adminNewpassword  id=adminNewpassword 	placeholder="新密码" onblur="check_adminNewpassword()" tabIndex="2">
												<span class="glyphicon glyphicon-ok form-control-feedback" id="adminNewpasswordSuccess" style="visibility:hidden"></span>
	                                    		<span class="glyphicon glyphicon-remove form-control-feedback" id="adminNewpasswordError" style="visibility:hidden"></span>
											</div>
											<span class="col-sm-3" style="padding: 0"><p id="adminNewpasswordMessage" style="color: red; margin: 0%"></p></span>
									</div>
									
									<div class=form-group id="inputsetEmail">
											<label class="control-label col-sm-4 sr-only" for="setEmail">邮箱</label>
											<div class=col-sm-4>										
												<input  class=form-control type="text"  name=setEmail  id=setEmail 	placeholder="设置接受的邮箱" onblur="check_Email()" tabIndex="2">
												<span class="glyphicon glyphicon-ok form-control-feedback" id="setEmailSuccess" style="visibility:hidden"></span>
	                                    		<span class="glyphicon glyphicon-remove form-control-feedback" id="setEmailError" style="visibility:hidden"></span>
											</div>
											<span class="col-sm-3" style="padding: 0"><p id="setEmailMessage" style="color: red; margin: 0%"></p></span>
									</div>
									
									<div class="form-group" id="inputVerifyCode">
										<label class="control-label col-sm-4 sr-only" for="verifyCode">验证码</label>
										<div class="col-sm-2">
											<input class="form-control" type="text" name="verifyCode" id="verifyCode" placeholder="验证码" onblur="check_verifyCode()" tabIndex="4">
											<span class="glyphicon glyphicon-ok form-control-feedback" id="verifyCodeSuccess" style="visibility:hidden"></span>
                                    		<span class="glyphicon glyphicon-remove form-control-feedback" id="verifyCodeError" style="visibility:hidden"></span>
										</div>
										<div class="col-sm-2">
											<img src="${pageContext.request.contextPath}/servlet/VerifyCodeServlet" style="width: 100%" onclick="this.src=this.src + '?' + Math.random()"/>
										</div>
										<span class="col-sm-3" style="padding: 0"><p id="verifyCodeMessage" style="color: red; margin: 0%"></p></span>
									</div>
										
										<div class="form-group form-actions">
											<div class="col-xs-offset-4 col-xs-4 ">
											<button type="button" class="btn btn-lg btn-danger btn-block" onclick="submitadminlogin()"><span class="glyphicon glyphicon-off"></span> 提交</button>
											</div>
										</div>
									<div class="form-group" hidden>
										<input id="base" value="${pageContext.request.contextPath}">
									</div>
									</form>
								</div>
							</div>
						</div>
<%@ include file="/WEB-INF/jsp/footer.jsp"%>