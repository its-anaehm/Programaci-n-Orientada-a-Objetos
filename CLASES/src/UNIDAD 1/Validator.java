package unidad1;
/**
 * Permite limpiar y validar distintos tipo de parámetros para la gestión de usuarios.
 * @author moises
 * @version 0.1.0
 * */
public class Validator {
	
	/** Procesa el nombre de usuario y devuelve una cadena válida.
	 *  @param userName El nombre de usuario con caracteres no válidos.
     *	@return El nombre de usuario limpio de caracteres inválidos.
	 * */
	public String cleanUserName(String userName) {
		userName = userName.trim().replaceAll("[^\\w]+", "");
		return userName;
	}
	
	/** Procesa la edad dada por el usuario y devuelve una cantidad válida.
	 * @param age edad dada por el usuario.
	 * @return un valor numérico con la edad del usuario.
	 * */
	public int cleanAge(String age) {
		age = age.trim().replaceAll("\\D+", "");
		return Integer.parseInt(age);
	}
	
	/** Permite limpiar un campo de text "text area" , elminando posibles etiquetas he HTML en el contenido.
	 *@param htmlContent El contenido del textarea enviado por el usuario.
	 *@return Una cadena limpia de contenido HTML.
	 */
	public String cleanHTMLContent(String content) {
		content = content.trim().replaceAll("</?[^>]+>","");
		return content;
	}
	
	/** Verifica que un parámetro sea un valor entero entre max y min.
	 * @param numericValue Valor numérico como una cadena que debe cumplir con la condición min y max.
	 * @param min Valor mínimo con el que se validará el numericValue.
	 * @param max Valor máximo con el que se validará el numericValue.
	 * @return El valor numérico como un entero entre un min y in max. Devuelve cero si el numericValue no cumple
	 * con el rango min y max.
	 */
	public int maxInt(String numericValue, int min, int max){
		numericValue = numericValue.trim();
		if(numericValue.matches("\\d+")) {
			int number = Integer.parseInt(numericValue);
			if(number >= min && number <= max) {
				return number;
			}
		}
		return 0;
	}
	
	/**Permite validar un parámetro color. Si el parámetro no tiene
	 * la forma de un color, se retorna el color rojo.
	 * @param Color Cadena con el formato del color.
	 * @return El volor válido. 
	 * */
	public String color(String color) {
		color = color.trim();
		if(color.matches("([a-z]{3,8})|(#([\\da-f]{2}){3})")) {
			return color;
		}
		return "red";
	}
}
