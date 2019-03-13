package sol.desk.wjjst;

import java.io.BufferedReader;
import java.io.InputStreamReader;

import java.net.URL;
import java.util.ArrayList;
import java.util.List;






public class FindID {
	
	public List id(String name) throws Exception {		

		// URL
		URL lolApisite = new URL("https://kr.api.riotgames.com/lol/summoner/v4/summoners/by-name/"+name+"?api_key=RGAPI-343c33b1-1e1f-48c2-8772-36790f2361fa");
		BufferedReader in = new BufferedReader(new InputStreamReader(lolApisite.openStream()));
		String lolApiJson = in.readLine();		  
	      
		
	      
		
		  String b = lolApiJson.replaceAll("\\{", "");
		  b = b.replaceAll("\\}", "");
		  b =b.replaceAll(" ", ""); 
		  b = b.replaceAll("\"", ""); 		  
		  String[] c = b.split(","); 
		  
		  String id = c[0];		  
		  String last_id = id.substring(id.indexOf(":")+1,id.length() );  
		
		  
		  String level = c[6];
		  String last_level = level.substring(level.indexOf(":")+1,level.length() );
		  
		 List list = new ArrayList();
		 list.add(last_id);
		 list.add(last_level);	
		
		return list;
	}	
	
	public static void main(String[] args) throws Exception {
		FindID id = new FindID();
		List name = id.id("타잔");
		System.out.println(name.get(0));
		System.out.println(name.get(1));
	}
	
}

