package unidad2;

public class NameProcessor {
public static String process(String name) {
	StringBuilder result = new StringBuilder(String.format("El nombre de usuario tiene %s caracteres",name.length()));
	return result.toString();
}
}
