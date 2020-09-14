package unidad2;
/**
 * Una interface representa una colección de métodos abstractos y de propiedades que deben
 * cumplir las clases que implementan esta interface.
 * 
 * Seŕa finalmente dicha clase quiene implementen la lógica específica de cada método.
 * Se permiten atributos y métodos públicos a través de una interface.
 * 
 * */
public interface Quiz {
	
	/**
	 * Método para evaluar el Quiz de la persona.
	 * */
	public Qualification evaluate();
}
