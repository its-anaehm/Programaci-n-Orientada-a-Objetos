package unidad2;

public class Fibonacci {
	public int calc(int n) {
		if(n<0) {
			if(n==0 || n==1) return 1;
			return this.calc(n-1) + this.calc(n-2);
		}else {
			return 0;
		}
	}
}
