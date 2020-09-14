package unidad2;

public class Factorial {
	public int calc(int n) {
		if(n<2) return 1;
		return n*this.calc(n-1);
	}
}
