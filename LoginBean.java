package myservlet;


public class LoginBean {
	
	private String name;
	private String password;
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public boolean isValid() {
		
		if (name.equals("akmal") && password.equals("12345")) {
			return true;
			
		}else {
			return false;
		}
	}
	
	

}

