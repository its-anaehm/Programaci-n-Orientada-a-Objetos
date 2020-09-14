package unidad3;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class Auth {
	
	
	private List<User> readList(String fileName){
		List<User> userList = new ArrayList<>();
		FileManager fm = new FileManager();
		String[] content = fm.read(fileName).split("\n");
		
		for(String row : content){
			String[] columns = row.split(",");
			userList.add(new User(columns[0],columns[1]));
			
		}
		return userList;
	}
	
	
	/** Valida que el request contiene los parameros correctos de autenticación.
	 * @param reqeust Es una instancia de HttpServletResquest.
	 * @return Si el request es válido o no lo es.
	 *  */
	public static boolean requestIsValid(HttpServletRequest request) {
		
			return	request.getParameter("userName") != null &&
				request.getParameter("userPassword") != null;
	}
	
	/**
	 * Este método valida el estado de la autenticación del usuario.
	 * @param session La instancia de un HTTP session.
	 * @return Si el usuario está autendicado o no lo está
	 * */
	public boolean sesssionIsValid(HttpSession session) {
		if(
			session.getAttribute(Constants.SessionAuthKey) != null &&
			session.getAttribute(Constants.SessionAuthKey).getClass().getSimpleName().equals("User") 
		) {
			User userSession = (User) session.getAttribute(Constants.SessionAuthKey);
			List<User> userList = this.readList(Constants.AuthSourceFile);
			
			for(User user : userList) {
				if(user.getName().equals(userSession.getName())) {
					return true;
				}
			}
		}
		return false;
	}
	
	/**Permite crear la session con el usuario autenticado.
	 * @param session Una instancia de HttpSession.
	 * @param request Una instancia de HttpServletRequest.
	 * @return La sesión con la información actualizada.
	 * */
	public HttpSession create(HttpSession session, HttpServletRequest request) {
		
		session.setAttribute(Constants.SessionStatusKey, false);
		
		String userName = request.getParameter("userName").toString().trim();
		String userPassword = request.getParameter("userPassword").toString().trim();
		
		List<User> users = this.readList("auth.csv");
		for(User user:users){
			if(user.validate(userName, userPassword)){
				
				User userSession = new User();
				userSession.setName(user.getName());
				
				session.setAttribute(Constants.SessionAuthKey,userSession);
				session.setAttribute(Constants.SessionStatusKey, true);
				break;
			}
		}
		return session;
	}
	
	
}
