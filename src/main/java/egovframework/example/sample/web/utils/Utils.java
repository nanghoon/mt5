package egovframework.example.sample.web.utils;

import java.text.DecimalFormat;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Utils {
	
	public static boolean isNull(String str) {
		return str == null || str.trim().isEmpty() || str.equals("null") || str.equals("NaN") || str.equals("undefined");
	}
	
	public static boolean isNum(String str) {
		return Pattern.matches("^[0-9]*$", str);
	}	
	
	public static boolean checkPw(String str) {
		return Pattern.matches("^(?=.*[a-zA-Z])(?=.*[0-9]).{8,15}$", str);
	}
	
	public static boolean checkId(String str) {
		return Pattern.matches("^[a-zA-Z0-9ㄱ-ㅎ가-힣]{4,15}$", str);
	}
	
	public static boolean checkPhone(String str) {
		return Pattern.matches("^\\d{2,3}\\d{3,4}\\d{4}$", str);
	}
	
	public static int randomIcon() {
		Random random = new Random();
		int randomNumber = random.nextInt(9) + 1;
		return randomNumber;
	}
	 
	public static String getTempCode(int length) {
		int index = 0;
		char[] charArr = new char[] { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F',
				'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a',
				'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v',
				'w', 'x', 'y', 'z' };
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < length; i++) {
			index = (int) (charArr.length * Math.random());
			sb.append(charArr[index]);
		}
		return sb.toString();
	}
	
	public static String comma(long num){
		DecimalFormat df = new DecimalFormat("#,###");
		return df.format(num);
	}
	
	public static String formatAmount(String amount) {
	    try {
	        long value = Long.parseLong(amount);
	        return String.format("%,d", value);  // 천단위 콤마 추가
	    } catch (Exception e) {
	        return amount;
	    }
	}
	
    public static boolean checkEmail(String str) {
        Pattern pattern = Pattern.compile("^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+$");
        Matcher matcher = pattern.matcher(str);
        return matcher.matches();
    }
    
	public static String input(String str) {
	    String returnStr = str;
 	    char lastChar = str.charAt(str.length() - 1); // 입력된 문자열의 마지막 글자 추출
 	    int index = (lastChar - 0xAC00) % 28; // 종성 인덱스값 
	    return returnStr + (index > 0 ? "을 " :"를 ")+"입력해주세요";
	}
    
}
