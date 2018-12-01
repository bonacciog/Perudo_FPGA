
public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int n = 5;
		int i = 1;
		double p = 0.16667;
		
		double temp = 0;
		
		System.out.println("Numero di dadi in gioco = " + n);
		System.out.println("P(X = 1) = " + funzioneDiRipartizioneBinomiale(p, n, i));
		temp+=funzioneDiRipartizioneBinomiale(p, n, i);
		
		i = 2;

		System.out.println("Numero di dadi in gioco = " + n);
		System.out.println("P(X = 2) = " + funzioneDiRipartizioneBinomiale(p, n, i));
		temp+=funzioneDiRipartizioneBinomiale(p, n, i);
		
		i = 3;
		
		System.out.println("Numero di dadi in gioco = " + n);
		System.out.println("P(X = 3) = " + funzioneDiRipartizioneBinomiale(p, n, i));
		temp+=funzioneDiRipartizioneBinomiale(p, n, i);
		
		i = 4;
		
		System.out.println("Numero di dadi in gioco = " + n);
		System.out.println("P(X = 4) = " + funzioneDiRipartizioneBinomiale(p, n, i));
		temp+=funzioneDiRipartizioneBinomiale(p, n, i);
		
		i = 5;
		
		System.out.println("Numero di dadi in gioco = 5");
		System.out.println("P(X = 5) = " + funzioneDiRipartizioneBinomiale(p, n, i));
		temp+=funzioneDiRipartizioneBinomiale(p, n, i);
		
		System.out.println("Result = " + temp/n);
		
	}

	public static int fattoriale (int numero){
		if(numero < 0) return 0;
		
		if(numero <= 1) return 1;
		return fattoriale(numero - 1) * numero;

	}
	
	public static double coefficienteBinomiale (int n, int i){
		float result = 0;

		result = fattoriale(n)/(float)(fattoriale(i) * fattoriale(n-i));
		return result;
	}
	
	public static double funzioneDiMassaBinomiale (double p, int n, int i){
		double result = 0;
		
		result = coefficienteBinomiale(n,i) * Math.pow(p,i) * Math.pow((1-p), (n-i));
		return result;
		
	}
	
	public static double funzioneDiRipartizioneBinomiale (double p, int n, int i){
		double result = 0;
		
		for(int j=i; j<=n; j++){
			result += funzioneDiMassaBinomiale(p,n,j);
		}
		return result;
	}
}
