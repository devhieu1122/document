package com.tool;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MD5_MaHoaPass {
	public static String maHoaDuLieu(String str) {
		byte[] defaultByte = str.getBytes();
		try {
			MessageDigest algorithm = MessageDigest.getInstance("MD5");
			algorithm.reset();
			algorithm.update(defaultByte);
			byte messageDigest[] = algorithm.digest();
			StringBuffer hexString = new StringBuffer();
			for (int i = 0; i < messageDigest.length; i++) {
				String hex = Integer.toHexString(0xFF & messageDigest[i]);
				if (hex.length() == 1) {
					hexString.append('0');
				}
				hexString.append(hex);
			}
			str = hexString + "";
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return str;
	}

	public static void main(String[] args) {
		String pass = "12345";
		String mahoa = maHoaDuLieu(pass);
		System.out.println(mahoa);
	}
}
