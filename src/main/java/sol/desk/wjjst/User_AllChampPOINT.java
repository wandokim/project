package sol.desk.wjjst;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

public class User_AllChampPOINT {
private final String User_AGENT = "Mozilla/5.0";
	
	public String user_allchamppoint(String id) throws IOException {
		KeyValue key = new KeyValue();
		URL lolApisite = new URL("https://kr.api.riotgames.com/lol/champion-mastery/v4/scores/by-summoner/"+id+"?api_key="+key.keyvalue());
		URL obj = lolApisite;
		HttpURLConnection con = (HttpURLConnection) obj.openConnection();
		//optional default is GET
		con.setRequestProperty("User-AGENT",User_AGENT );
		con.getResponseCode();
		BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
		String lolApiJson = in.readLine();	
		//System.out.println(lolApiJson);
		
		return lolApiJson;
	}
	
	
}
