package vss.springsecurity.model;

public enum UserRole {
	BOOKING_MANAGER("BOOKING_MANAGER"),
	REGISTERED_USER ("REGISTERED_USER");

	String userRoleName;
	
	private UserRole(String userProfileType){
		this.userRoleName = userProfileType;
	}
	
	public String getUserRoleName(){
		return userRoleName;
	}
	
}
