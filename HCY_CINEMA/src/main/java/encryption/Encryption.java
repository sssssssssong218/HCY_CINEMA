package encryption;

import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;

import kr.co.sist.util.cipher.DataDecrypt;
import kr.co.sist.util.cipher.DataEncrypt;

public class Encryption {
	private static Encryption e;

	private Encryption() {
	}

	public static Encryption getInstance() {
		if (e == null) {
			e = new Encryption();
		} // if

		return e;
	}// getInstance

	public String encryption(String plan)
			throws NoSuchAlgorithmException, UnsupportedEncodingException, GeneralSecurityException {
		String result = "";

		DataEncrypt de = new DataEncrypt("1120020301311126");
		result = de.encryption(plan);

		return result;
	}// encryption
	
	public String directEncryption(String plan)
			throws NoSuchAlgorithmException, UnsupportedEncodingException, GeneralSecurityException {
		String result = "";
		
		result = DataEncrypt.messageDigest("MD5", plan);
		
		return result;
	}// encryption
	
	public String decryption(String cipher)
			throws NoSuchAlgorithmException, UnsupportedEncodingException, GeneralSecurityException {
		String result = "";

		DataDecrypt dd = new DataDecrypt("1120020301311126");
		result = dd.decryption(cipher);

		return result;
	}// encryption
	
	public static void main(String[] args) {
		try {
			System.out.println(Encryption.getInstance().decryption("6zj9VehWa7RtU/GZEhBSRA=="));
			System.out.println(Encryption.getInstance().encryption("6zj9VehWa7RtU/GZEhBSRA=="));
		} catch (UnsupportedEncodingException | GeneralSecurityException e) {
			e.printStackTrace();
		}
	}
}// class
