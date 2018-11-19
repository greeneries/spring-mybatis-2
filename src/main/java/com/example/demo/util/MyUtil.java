package com.example.demo.util;

public class MyUtil {

	// Page 값을 skip 값으로 변환해서 리턴
	public static String pageToSkip(String pageString, String sizeString) {
		int page = Integer.parseInt(pageString);
		int size = Integer.parseInt(sizeString);
		
		int skip = 0;
		if (page > 0) {
			skip = (page - 1) * size;
		}
		
		String skipString = String.valueOf(skip);
		return skipString;
	}
}
