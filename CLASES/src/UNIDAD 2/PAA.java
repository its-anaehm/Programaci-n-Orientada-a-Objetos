package unidad2;

public class PAA implements Quiz{

	@Override
	public Qualification evaluate() {
		// TODO Auto-generated method stub
		return null;
	}
	
	public String print(String user) {
		StringBuilder result = new StringBuilder(String.format("<form><input type='hidden' name='user' id='user' value='%s'><table>",user));
		
		InputTag nameEvaluated = new InputTag("nameEvaluated","nameEvaluated","Ingrese el nombre del Evaluado.");
		InputTag nameEvaluator = new InputTag("nameEvaluator","nameEvaluator","Ingrese el nombre del Evaluador.");
		
		result.append("<tr>");
			result.append("<td>Ingrese el nombre del Evaluador.</td>");
			result.append("<td>");
			result.append(nameEvaluator.print());
			result.append("</td>");
		result.append("</tr>");
		
		result.append("<tr>");
			result.append("<td>Ingrese el nombre del Evaluado.</td>");
			result.append("<td>");
			result.append(nameEvaluated.print());
			result.append("</td>");
		result.append("</tr>");
		
		result.append("<tr>");
			result.append("<td></td>");
			result.append("<td><button type='submit'>Enviar formulario</button></td>");
		result.append("</tr>");
		
		result.append("</table></form>");
		return result.toString();
	}

}
