/**
 * 
 */
function check_Program(){
	
//	$('#checkProgram').attr("href","ShowAdminPageServlet?programName="+projectName+"&userNo="+userNo+"&adminState=1");
	 if(window.confirm("您确定要对该项目进行审批吗？")){
	
		 return true;
	       }
	       else{
	   
	       return false;
	       }      
	
}
function quanxian_Program(){
	 if(window.confirm("您确定要给该项目修改权限吗？")){
			
		 return true;
	       }
	       else{
	   
	       return false;
	       }      
//	$('#checkProgram').attr("href","ShowAdminPageServlet?programName="+projectName+"&userNo="+userNo+"&adminState=1");
	
}
function delete_Program(){
	 if(window.confirm("您确定要删除该项目吗？")){
			
		 return true;
	       }
	       else{
	   
	       return false;
	       }      
//	$('#checkProgram').attr("href","ShowAdminPageServlet?programName="+projectName+"&userNo="+userNo+"&adminState=1");
	
}
window.onload = function (){
	var currentPage = $("#currentPage").val();
	$("#"+currentPage).attr("class", "paginate_button active");
	} 


var setPageSize=false;
function submit_pageSize(){
	
	checkPageSize();
	if(setPageSize){
	$("#pageSizeForm").submit();
	}
	
}
function checkPageSize(){
 var pageSize=$("#pageSize").val();
 if((/^(\+|-)?\d+$/.test( pageSize ))&&pageSize>0){
	 setPageSize=true;
	 $("#inputpageSize").attr("class","form-group has-success has-feedback")
 }else{
	 setPageSize=false;
	 $("#inputpageSize").attr("class","form-group has-error has-feedback")
 }
	
}
function change_projectId(obj){
	var tds=$(obj).parent().parent().find('td');
	var projectId=tds.eq(0).find("#projectId").val();
	var projectName=tds.eq(1).text();
	var userNo=tds.eq(3).text();
	var pageSize=$("#pageSize").val();
	var currentPage = $("#currentPage").val();
	$(obj).attr("href","ZhongChuangWeb/servlet/admin/UpdateProjectIdServlet?programNo="+projectId+"&programName="+projectName+"&userNo="+userNo+"&pageSize="+pageSize+"&currentPage="+currentPage);
	if(window.confirm("你确定要为该项目编号赋值为"+projectId)){
		
		 return true;
	       }
	       else{
	   
	       return false;
	       }      
}
function changeFind_projectId(obj){
	var tds=$(obj).parent().parent().find('td');
	var projectId=tds.eq(0).find("#projectId").val();
	var projectName=tds.eq(1).text();
	var userNo=tds.eq(3).text();
	var pageSize=$("#pageSize").val();
	var currentPage = $("#currentPage").val();
	$(obj).attr("href","ZhongChuangWeb/servlet/admin/UpdateProjectIdServlet?findFlag=1&programNo="+projectId+"&programName="+projectName+"&userNo="+userNo);
	if(window.confirm("你确定要为该项目编号赋值为"+projectId)){
		
		 return true;
	       }
	       else{
	   
	       return false;
	       }      
}
/*function chooseButtonClass(obj){
	
	$("#"+obj).attr("class", "paginate_button active");
	alert(1);
}*/