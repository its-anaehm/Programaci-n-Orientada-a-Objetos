package unidad1;

/**
 * Permite establecer un punto como parámetro x,y que hacen referencia a 
 * una figura geométrica.
 * @author swd
 * @version 0.1.0
 * 
 * */
public class Point {
	/**La coordenada x del punto.*/
	private int x;
	
	/**La coordenada y del punto.*/
	private int y;
	
	/**
	 * El constructor con el parámetro pointAsString (Punto como cadena).
	 * @param pointAsString Representa un punto que separa el "x" y al "y" con una coma.
	 * */
	public Point(String pointAsString){
		pointAsString = pointAsString.toString();
		if(pointAsString.matches("\\d+,\\d+")) {
			String[] temporalPoint = pointAsString.split(",");
			this.x = Integer.parseInt(temporalPoint[0]);
			this.y = Integer.parseInt(temporalPoint[1]);
		}else {
		this.y = 0;
		this.x = 0;
			
		}
	}

	/**
	 * @return the x
	 */
	public int getX() {
		return x;
	}

	/**
	 * @return the y
	 */
	public int getY() {
		return y;
	}
	
	
}
