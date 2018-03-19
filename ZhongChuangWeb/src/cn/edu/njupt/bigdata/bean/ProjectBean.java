package cn.edu.njupt.bigdata.bean;

public class ProjectBean {
	private int id = 0 ;
	
	private String projectId = null;
	
	private String projectName = null;
	
	private String projectType = null;
	
	private String userNo = null;
	
	private String projectUser = null;
	
	private String projectEmail =null;
	
	private String projectMobile =null;
	
	private String projectFile = null; 
	
	private String projectBill = null;
	
	private int fileState = 0;
	
	private int billState = 0;
	
	private int adminState = 0;
	
	private int changeState = 0;
	
	private String time =null;
	public int getId() {
		return id;
	}

	public String getProjectId() {
		return projectId;
	}

	public void setProjectId(String projectId) {
		this.projectId = projectId;
	}

	public String getProjectName() {
		return projectName;
	}

	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}

	public String getProjectType() {
		return projectType;
	}

	public void setProjectType(String projectType) {
		this.projectType = projectType;
	}

	public String getUserNo() {
		return userNo;
	}

	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}

	public String getProjectUser() {
		return projectUser;
	}

	public void setProjectUser(String projectUser) {
		this.projectUser = projectUser;
	}
    
	public String getProjectEmail() {
		return projectEmail;
	}

	public void setProjectEmail(String projectEmail) {
		this.projectEmail = projectEmail;
	}

	public String getProjectMobile() {
		return projectMobile;
	}

	public void setProjectMobile(String projectMobile) {
		this.projectMobile = projectMobile;
	}

	public String getProjectFile() {
		return projectFile;
	}

	public void setProjectFile(String projectFile) {
		this.projectFile = projectFile;
	}

	public String getProjectBill() {
		return projectBill;
	}

	public void setProjectBill(String projectBill) {
		this.projectBill = projectBill;
	}

	public int getFileState() {
		return fileState;
	}

	public void setFileState(int fileState) {
		this.fileState = fileState;
	}

	public int getBillState() {
		return billState;
	}

	public void setBillState(int billState) {
		this.billState = billState;
	}

	public int getAdminState() {
		return adminState;
	}

	public void setAdminState(int adminState) {
		this.adminState = adminState;
	}

	public int getChangeState() {
		return changeState;
	}

	public void setChangeState(int changeState) {
		this.changeState = changeState;
	}
	
	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}


}
