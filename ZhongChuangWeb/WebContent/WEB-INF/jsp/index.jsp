<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@page import="java.sql.Connection"%>
 <%@page import="java.sql.*"%>
 <%@ page import="cn.edu.njupt.bigdata.bean.ProjectBean" %>
 <%@ page import="cn.edu.njupt.bigdata.bean.AdminPageBean" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<script src="${pageContext.request.contextPath}/PUBLIC/JSON/bootstrap-modal.js"></script>
<script src="${pageContext.request.contextPath}/JS/fileUp.js"></script>
<script src="${pageContext.request.contextPath}/JS/expenseFileUp.js"></script>
<%@ include file="/WEB-INF/jsp/header.jsp" %>
			<div class="col-lg-12" style="margin-top:3%">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">
							众创项目文件一览
						</h3>
					</div>
					<div class="panel-body">	
						<table	class="table table-hover table-striped table-bordered table-responsive">
							<thead>
								<tr>
									<th class="col-sm-2" style="text-align:center;">项目编号</th>
									<th class="col-sm-3" style="text-align:center;">名称</th>
									<th class="col-sm-1" style="text-align:center;" >类型</th>
									<th class="col-sm-2" style="text-align:center;">文档上传</th>
									<th class="col-sm-2" style="text-align:center;">报销上传</th>
									<th class="col-sm-2" style="text-align:center;">文档下载</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="project" items="${projectList}" >
									<tr>
										<td class="col-sm-2" style="text-align:center;"><c:out value="${project.projectId}"></c:out>
										<div class="form-group" hidden>
										<input id="base" value="${project.projectId}">
										</div>
										</td>
										<td class="col-sm-3" style="text-align:center;"><c:out value="${project.projectName}"></c:out></td>
										<td class="col-sm-1" style="text-align:center;"><c:out value="${project.projectType}"></c:out></td>
										<td class="col-sm-2" style="text-align:center;">
										<c:choose>
										 	<c:when test="${(project.fileState == 1 and project.adminState==0)}">
										 	
										 		<a class="btn btn-success btn-sm" href="javascript:void(0)" onclick="upFile(this)" title="上传上传时间为 :${project.time}" ><i class="glyphicon glyphicon-arrow-up"></i></a>
										 		<p style="font-size:9px;margin:0px">上次上传时间为 :${project.time}</p>
										 	</c:when>
										 	<c:when test="${project.adminState==1}">
										 			<a  class="btn btn-default btn-sm disabled" href="#"><i >已审批</i></a>
										 	</c:when>
										 	<c:otherwise>
										 			<a class="btn btn-success btn-sm" href="javascript:void(0)" onclick="upFile(this)" title="首次上传" ><i class="glyphicon glyphicon-arrow-up"></i></a>
										 	</c:otherwise>
										</c:choose>
										</td>
										<td class="col-sm-2" style="text-align:center;">
												<c:choose>
													<c:when test="${project.fileState == 1 and project.billState==0 and project.adminState ==1}">
											 			 <a class="btn btn-info btn-sm"  href="javascript:void(0)" onclick="upExpenseFile(this)"><i class="glyphicon glyphicon-arrow-up"></i></a>
											 		</c:when>
											 		<c:when test="${ project.billState==1 }">
											 			 <a class="btn btn-default btn-sm disabled"  href="#" ><i >已上传</i></a>
											 		</c:when>
												 	<c:otherwise>
												 		<a  class="btn btn-default btn-sm disabled" href="#"><i>未审批</i></a>
												 	</c:otherwise>
											 	</c:choose>
										</td>
										<td class="col-sm-2" style="text-align:center;">
												<c:choose>
													<c:when test="${project.fileState == 1}">
														<a class="btn btn-danger btn-sm"  href="${pageContext.request.contextPath}/servlet/user/UserDownProjectFileServlet?programName=${project.projectName}" ><i class="glyphicon glyphicon-arrow-down"></i></a>
											 		</c:when>
												 	<c:otherwise>
												 		<a  class="btn btn-default btn-sm disabled" href="#"><i class="glyphicon glyphicon-arrow-down"></i></a>
												 	</c:otherwise>
											 	</c:choose>
										</td>
									</tr>
								</c:forEach>
							</tbody>
							
						</table>
					</div>
			</div>
		</div>
		

		
<%@ include file="/WEB-INF/jsp/footer.jsp"%>
<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog"  aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
					<div class="modal-content">
							 <div class="modal-header">
									<button type="button" class="close" 
											  data-dismiss="modal" aria-hidden="true">
													   &times;
									</button>
									 <h4 class="modal-title" id="myModalLabel">
											   文件上传
									 </h4>
							</div>
							 <div class="modal-body">
									 <form class=form-horizontal method=post action="${pageContext.request.contextPath}/servlet/user/UIApplyServlet" id="fileUpForm" role="form"  enctype="multipart/form-data">
											<div class="form-group" id="inputProgramName">
													<div class="col-sm-8">
															<label class="control-label" for="ProgramName">请输入项目名称：</label>
															<input type="text" class="form-control" name="ProgramName" id="ProgramName" placeholder="项目名称" onblur="check_ProgramName()" tabIndex="1" autofocus value="" readonly="readonly">
															<span class="glyphicon glyphicon-ok form-control-feedback" id="ProgramNameSuccess" style="visibility:hidden"></span>
								                            <span class="glyphicon glyphicon-remove form-control-feedback" id="ProgramNameError" style="visibility:hidden"></span>
													</div>
													<span class="col-sm-3" style="padding: 0"><p id="ProgramNameMessage" style="color: red; margin: 0%"></p></span>
											</div>
																
											<div class=form-group id="inputProgramWord">
													<div class=col-lg-8>	
															<label class="control-label " for="ProgramWord">上传项目文档：</label>									
															<input type="file" name="ProgramWord" id="ProgramWord" accept="application/msword,application/vnd.openxmlformats-officedocument.wordprocessingml.document" onblur="check_ProgramWord()" tabIndex="2" autofocus>
															<span class="glyphicon glyphicon-ok form-control-feedback" id="ProgramWordSuccess" style="visibility:hidden"></span>
									                        <span class="glyphicon glyphicon-remove form-control-feedback" id="ProgramWordError" style="visibility:hidden"></span>
													</div>
													<span class="col-sm-3" style="padding: 0"><p id="ProgramWordMessage" style="color: red; margin: 0%"></p></span>
											</div>
									</form>
							</div>
							<div class="modal-footer">
								 <button type="button" class="btn btn-primary" onclick="submitUI1()" >
									             提交
								 </button>
								 <button type="button" class="btn btn-danger"  data-dismiss="modal">关闭 </button>
								
							</div>
					</div><!-- /.modal-content -->
			</div><!-- /.modal -->
</div>
										
<div class="modal fade" id="expense" tabindex="-1" role="dialog"  aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
				<div class="modal-content">
							<div class="modal-header">
									<button type="button" class="close" 
											  data-dismiss="modal" aria-hidden="true">
												 &times;
									 </button>
									 <h4 class="modal-title" id="myModalLabel">
											    文件上传
									 </h4>
							</div>
							<div class="modal-body">
									<form class=form-horizontal method=post action="${pageContext.request.contextPath}/servlet/user/UIExpenseServlet" id="expensefileUpForm" role="form"  enctype="multipart/form-data">
											<div class="form-group" id="inputProgramName1">
														<div class="col-sm-8">
																<label class="control-label" for="ProgramName1">请输入项目名称：</label>
																		<input type="text" class="form-control" name="ProgramName" id="ProgramName1" placeholder="项目名称" onblur="check_ProgramName1()" tabIndex="1" autofocus readonly="readonly">
																		<span class="glyphicon glyphicon-ok form-control-feedback" id="ProgramName1Success" style="visibility:hidden"></span>
										                                 <span class="glyphicon glyphicon-remove form-control-feedback" id="ProgramName1Error" style="visibility:hidden"></span>
														</div>
											</div>
											<div class="form-group" hidden>
												<input id="fileNumber" name="fileNumber" value="">
											</div>							
											<div class=form-group id="inputProgramBill">
														<div class=col-lg-8>	
																<label class="control-label " for="ProgramBill">上传报销清单：</label>									
																		<input type="file" name="ProjectBill" id="ProgramBill" accept="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet,application/msexcel" onblur="check_ProgramBill()" tabIndex="2" autofocus>
																		<span class="glyphicon glyphicon-ok form-control-feedback" id="ProgramBillSuccess" style="visibility:hidden"></span>
											                            <span class="glyphicon glyphicon-remove form-control-feedback" id="ProgramBillError" style="visibility:hidden"></span>
														</div>
																		<span class="col-sm-3" style="padding: 0"><p id="ProgramBillMessage" style="color: red; margin: 0%"></p></span>
											</div>
																			
											<div class=form-group id="inputProgramPicture">
																<div class=col-lg-8>	
																		<label class="control-label " for="ProgramPicture">上传报销图片：</label>									
																		<input type="file" name="projectPicture" id="ProgramPicture" accept="image/*" onblur="check_ProgramPicture()" tabIndex="2" autofocus multiple/>
																		<span class="glyphicon glyphicon-ok form-control-feedback" id="ProgramPictureSuccess" style="visibility:hidden"></span>
											                            <span class="glyphicon glyphicon-remove form-control-feedback" id="ProgramPictureError" style="visibility:hidden"></span>
																</div>
																		<span class="col-sm-3" style="padding: 0"><p id="ProgramPictureMessage" style="color: red; margin: 0%"></p></span>
											</div>
											
									</form>
							</div>
							<div class="modal-footer">
									<button type="button" class="btn btn-primary" onclick="expenseUp()" >
									        提交
									</button>
									<button type="button" class="btn btn-danger"  data-dismiss="modal">关闭 </button>
						</div>
				</div><!-- /.modal-content -->
		</div><!-- /.modal -->
</div>
