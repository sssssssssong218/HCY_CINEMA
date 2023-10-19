package dbconn;

import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import org.apache.tomcat.util.codec.binary.Base64;

import kr.co.sist.util.cipher.DataDecrypt;
import kr.co.sist.util.cipher.DataEncrypt;

public class TestMessageDigest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String plainText="Test123~";
		//1.일방향 HASH Algorithm을 사용할수 있는 객체 생성
		try {
			MessageDigest md=MessageDigest.getInstance("MD5");
			//2. 일반 문자열(PlainText)를 암호화 문자열(Ciper Text)로 변환
			md.update(plainText.getBytes());
			//3. 암호화 문자열 받기
			byte[] ciperArr=md.digest();
			//4. Base64 encoder를 사용하여 encoding
			
			Base64 base=new Base64();
			
			String chiperText=new String(base.encode(ciperArr));
			System.out.println(chiperText);
			
			String text="bat1120@naver.com";
			//암호화(plain text->cipher text
			
				DataEncrypt de=new DataEncrypt("a12345678901234567");
				
					String cipher2=de.encryption(text);
					System.out.println(cipher2);
					DataDecrypt dd=new DataDecrypt("a12345678901234567");
					String plain2=dd.decryption(cipher2);
					System.out.println(plain2);
			
				
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}catch (GeneralSecurityException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			
		} 
	}//main

}//class
