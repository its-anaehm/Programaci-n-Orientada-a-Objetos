package unidad2;
/**
 * Genera una etiqueta que representa un input en HTML.
 * @author swd
 * @version 0.1.0
 * */
public class InputTag {
	private String name;
	private String id;
	private String placeholder;
	
	public InputTag(String name, String id, String placeholder) {
		this.name = name;
		this.id = id;
		this.placeholder = placeholder;
	}
	
	/**
	 * @return the name
	 * */
	public String getName() {
		return name;
	}
	
	/**
	 * @return the id
	 * */
	public String getId() {
		return id;
	}
	
	/**
	 * @return the placeholder
	 * */
	public String getPlaceholder() {
		return placeholder;
	}
	
	public String print() {
		return String.format("<input name='%s' id='%s' placeholder='%s'>",this.name, this.id, this,placeholder);
	}
}
