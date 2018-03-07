package util;

public class Validation {
	public static boolean isEmpty(String str){
		if(str == null||"".equals(str)){
			return true;
		}
		return false;
	}
}