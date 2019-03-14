package sol.desk.wjjst;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

public class Rankinfo {
	private final String User_AGENT = "Mozilla/5.0";
	public String contents(String id) throws IOException {
		URL lolApisite = new URL("https://kr.api.riotgames.com/lol/league/v4/positions/by-summoner/"+id+"?api_key=RGAPI-42faecd8-589d-4bd7-87a2-f4492f960705");
	
		URL obj = lolApisite;
		HttpURLConnection con = (HttpURLConnection) obj.openConnection();
		//optional default is GET
		con.setRequestProperty("User-AGENT",User_AGENT );
		con.getResponseCode();
		BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
		String lolApiJson = in.readLine();	
		System.out.println(lolApiJson);
		
		return lolApiJson;
	}
	
}


