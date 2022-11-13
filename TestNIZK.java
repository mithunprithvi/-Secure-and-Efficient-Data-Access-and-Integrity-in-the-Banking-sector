package servlet;

import java.math.BigInteger;

/**
 * This simple class demonstrates NIZK's homomorphic properties:
 * if a*b=c then NIZK(a)*NIZK(a)=NIZK(c)
 * @author george georgovassilis
 *
 */
public class TestNIZK {

	public static void main(String...args) throws Exception{
		//instantiate public/private keys
		NIZK nizk = new NIZK(1024);
		
		BigInteger a = new BigInteger("4");
		BigInteger b = new BigInteger("17");
		BigInteger expectedProduct = a.multiply(b);

		BigInteger enca = nizk.encrypt(a);
		BigInteger encb = nizk.encrypt(b);
		
		BigInteger encc = enca.multiply(encb);
		
		BigInteger c = nizk.decrypt(encc);
		
		System.out.println(a+" * "+b+" = "+c+" which is "+(c.equals(expectedProduct)));
	}

}
