package unidad1;

import java.util.List;

/**
 * Es la respuesta del análisis de parámetros.
 * @author @POO
 * @version 0.1.0*/
public class ResponseParameterManager {
	/** La cantidad de parámetro*/
	private int count;
	
	/** Lista de parametros*/
	private List<ParameterAnalysis> results;

	/**
	 * @return the count
	 */
	public int getCount() {
		return count;
	}

	/**
	 * @param count the count to set
	 */
	public void setCount(int count) {
		this.count = count;
	}

	/**
	 * @return the results
	 */
	public List<ParameterAnalysis> getResults() {
		return results;
	}

	/**
	 * @param results the results to set
	 */
	public void setResults(List<ParameterAnalysis> results) {
		this.results = results;
	}
	
	

}
