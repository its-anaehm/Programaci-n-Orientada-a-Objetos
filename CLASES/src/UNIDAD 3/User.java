package unidad3;

public class User {
	private String name;
	private String password;
	
	public User(String name, String password) {
		this.name = name;
		this.password = password;
	}
	
	public User() {}

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
	
	public boolean validate(String name, String password) {
		name = name.trim();
		password = password.trim();
		if(this.name.equals(name) && this.password.equals(password)) {
			return true;
		}
		return false;
	}
}
