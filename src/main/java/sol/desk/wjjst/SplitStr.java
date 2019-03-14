package sol.desk.wjjst;

public class SplitStr {

	public String[] split(String lolApiJson) {
		
		String b = lolApiJson.replaceAll("\\{", "");
		b = b.replaceAll("\\}", "");
		b = b.replaceAll(" ", ""); 
		b = b.replaceAll("\"", ""); 		  
		String[] line = b.split(","); 
		
		return line;
	}
	
}
