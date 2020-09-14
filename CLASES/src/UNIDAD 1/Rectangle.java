package unidad1;

/**
 * Permite dibujar una figura rectangular en la pantalla usando etiquetas HTML.
 * @author swd
 * @version 0.1.0
 * */
public class Rectangle {
	/**
	 * Constructor vacío de la clase.
	 * */
	public Rectangle() {}
	
	public String draw(Point p, int h, int w, String color, int zIndex) {
		StringBuilder result = new StringBuilder(String.format("<div style='border:1px solid black;background-color:%s; position:fixed; top:%svh; left:%svw; width:%svw; height:%svh; z-index:%s;'>&nbsp</div>",
				color, p.getY(), p.getX(), w, h, zIndex));
		return result.toString();
	}
	public String draw(Point pointA, Point pointB, String color, int zIndex){
		int h = pointB.getY() - pointA.getX();
		int w = pointB.getY() - pointA.getY();
		
		return this.draw(pointA, h, w, color, zIndex);
	}
	
	public String draw(Point p, int h, int w, String color, int zIndex, int times) {
		if(times < 1) {
			return this.draw(p, h, w, color, zIndex);
		}
		Point newP = new Point(String.format("%s,%s",p.getX()+2, p.getY()+2));
		return this.draw(p,h,w,color,zIndex).replace("&nbsp", this.draw(newP, h, w, color,times-1,zIndex));
	}
	
	
	
}
