package week5.com.dao;

public class GuGuDan {
	public String process(int number) {
		StringBuilder sb = new StringBuilder();
		
		for (int i = 1; i <= 9; i++) {
			sb.append(number)
			  .append("*")
			  .append(i)
			  .append("=")
			  .append(number * i)
			  .append("<br>");
		}
		
		return sb.toString();
	}
}
