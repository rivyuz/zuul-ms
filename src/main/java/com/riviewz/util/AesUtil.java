package com.riviewz.util;

import java.io.UnsupportedEncodingException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;

import org.apache.commons.codec.DecoderException;
import org.apache.commons.codec.binary.Base64;
import org.apache.commons.codec.binary.Hex;

// TODO: Implement 256-bit version like: http://securejava.wordpress.com/2012/10/25/aes-256/
public class AesUtil {

	private final int keySize = 128;
	private final int iterationCount = 1000;

	private final String salt = "19eb7677ec499755f97201085c970f39";
	private final String iv = "35c3035fbd55fdc8751583226f84be04";
	private final String passphrase = "d51617cedf67f7779e78f93f3eb9b18f";

	private final Cipher cipher;

	public AesUtil() {
		try {
			cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
		} catch (NoSuchAlgorithmException | NoSuchPaddingException e) {
			throw fail(e);
		}
	}

	public String encrypt(String plaintext) {
		try {
			SecretKey key = generateKey(salt, passphrase);
			byte[] encrypted = doFinal(Cipher.ENCRYPT_MODE, key, iv, plaintext.getBytes("UTF-8"));
			return base64(encrypted);
		} catch (UnsupportedEncodingException e) {
			throw fail(e);
		}
	}

	public String decrypt(String ciphertext) {
		try {
			SecretKey key = generateKey(salt, passphrase);
			byte[] decrypted = doFinal(Cipher.DECRYPT_MODE, key, iv, base64(ciphertext));
			return new String(decrypted, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			throw fail(e);
		}
	}

	private byte[] doFinal(int encryptMode, SecretKey key, String iv, byte[] bytes) {
		try {
			cipher.init(encryptMode, key, new IvParameterSpec(hex(iv)));
			return cipher.doFinal(bytes);
		} catch (InvalidKeyException | InvalidAlgorithmParameterException | IllegalBlockSizeException | BadPaddingException e) {
			throw fail(e);
		}
	}

	private SecretKey generateKey(String salt, String passphrase) {
		try {
			SecretKeyFactory factory = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA1");
			KeySpec spec = new PBEKeySpec(passphrase.toCharArray(), hex(salt), iterationCount, keySize);
			SecretKey key = new SecretKeySpec(factory.generateSecret(spec).getEncoded(), "AES");
			return key;
		} catch (NoSuchAlgorithmException | InvalidKeySpecException e) {
			throw fail(e);
		}
	}

	public static String random(int length) {
		byte[] salt = new byte[length];
		new SecureRandom().nextBytes(salt);
		return hex(salt);
	}

	public static String base64(byte[] bytes) {
		return Base64.encodeBase64String(bytes);
	}

	public static byte[] base64(String str) {
		return Base64.decodeBase64(str);
	}

	public static String hex(byte[] bytes) {
		return Hex.encodeHexString(bytes);
	}

	public static byte[] hex(String str) {
		try {
			return Hex.decodeHex(str.toCharArray());
		} catch (DecoderException e) {
			throw new IllegalStateException(e);
		}
	}

	private IllegalStateException fail(Exception e) {
		return new IllegalStateException(e);
	}
}
