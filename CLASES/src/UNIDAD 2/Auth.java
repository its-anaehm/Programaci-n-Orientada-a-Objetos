package unidad2;

import java.util.ArrayList;
import java.util.List;

public class Auth {
	public static List<User> readList(String fileName){
		List<User> userList = new ArrayList();
		FileManager fm = new FileManager();
		String[] content = fm.read(fileName).split("\n");
		
		for(String row : content){
			String[] columns = row.split(",");
			userList.add(new User(columns[0],columns[1]));
			
		}
		return userList;
	}
}
