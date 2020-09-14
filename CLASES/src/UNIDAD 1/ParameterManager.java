package unidad1;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/*
 * Visibilidad:
 * Caracteristica de los objetos
 * 	public: Cuando el atributo o método se puede ver desde dentro o fuera de la clase.
 * 	private: No se puede heredar ni son visibles fuera de la clase.
 * 	protected: No son visibles fuera de la clase pero son heredables.
 * */
/**
 * Gestiona la cantidad de parámetros recibidos.
 * Cuantifica y categoriza los parámetros recibidos por el programa.
 * @author @POO
 * @version 0.1.0*/
public class ParameterManager{
	/** Cuantifica la cantidad de parámetros.*/
	private int count;

	/**
	 * Obtiene la cantidad de parámetros.
	 * @return count
	 */
	public int getCount() {
		return count;
	}

	/**
	 * @param count Establece la Cantidad de parámetros detectados
	 */
	public void setCount(int count) {
		this.count = count;
	}
	/** Respuesta de analisis de parámetros*/
	public ResponseParameterManager analize(Map<String,String[]> parameters) {
		//Cuenta la cantidad de parámetros
		int count = 0;
		
		List<ParameterAnalysis> results = new ArrayList<>();
		ResponseParameterManager rpm = new ResponseParameterManager();
		
		//Se ignora el indice
		for(String[] parameter : parameters.values()) {
			
			for(String element : parameter) {
				count++;
				//Tamaño en caracteres del valor del parámetro
				int length;
				//Tipo del parametro
				String parameterType;
				
				length = element.length();
				
				if(element.matches("-?\\d+(\\.\\d+)?")) {
					parameterType = "numeric";
				}else {
					parameterType = "alphanumeric";
				}
				results.add(new ParameterAnalysis(element,length,parameterType));
			}
		}
		rpm.setCount(count);
		rpm.setResults(results);
		return rpm;
	}
	/** @param ResponseParameterManager rpm
	 * 	@return String
	 * Convierte rpm en una tabla de texto html
	 * */
	public String convertResponseToHTML(ResponseParameterManager rpm) {
		int count = rpm.getCount();
		List<ParameterAnalysis> results = rpm.getResults();
		
		StringBuilder html = new StringBuilder("<table border='1'>");
		html.append(String.format("<tr><td>Parámetros encontrados</td><td>%s</td></tr>", count));
		
		html.append(String.format("<tr><td colspan='2'>%s</td></tr>",this.convertResultsToHTMLTable(results)));
		
		
		html.append("</table>");
		return html.toString();
	}
	
	private String convertResultsToHTMLTable(List<ParameterAnalysis> results) {
		StringBuilder html = new StringBuilder("<table border='1'>");
		int count = 1;
		
		html.append("<thead><tr>");
			html.append("<th>No.</th>");
			html.append("<th>Valor del Parámetro</th>");
			html.append("<th>Tamaño en Caracteres</th>");
			html.append("<th>Tipo de Dato</th>");
		html.append("</thead></tr>");
		html.append("<tbody>");
		
		for(ParameterAnalysis element: results) {
			html.append("<tr>");
			html.append(String.format("<td>%s</td>",count));
			html.append(String.format("<td>%s</td>",element.getValue()));
			html.append(String.format("<td>%s</td>",element.getLength()));
				html.append(String.format("<td>%s</td>",element.getType()));
			html.append("</tr>");
			count++;
		}
		html.append("</tbody></table>");
		
		return html.toString();
	}

}