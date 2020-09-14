package unidad1;

/**
 * Respresenta a un usuario conectado
 * @author @Moises
 * @version 0.1.0
 * */
public class User {
	
	private int age;
	private String fullName;
	
	public User(int age, String fullName) {
		this.age = age;
		this.fullName = fullName;
	}

	/**
	 * @return the age
	 */
	public int getAge() {
		return age;
	}

	/**
	 * @param age the age to set
	 */
	public void setAge(int age) {
		this.age = age;
	}

	/**
	 * @return the fullName
	 */
	public String getFullName() {
		return fullName;
	}

	/**
	 * @param fullName the fullName to set
	 */
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

}
