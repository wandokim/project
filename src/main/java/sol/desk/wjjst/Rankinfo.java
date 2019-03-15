package sol.desk.wjjst;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

public class Rankinfo {
	private final String User_AGENT = "Mozilla/5.0";
	
	public String contents(String id) throws IOException {
		KeyValue key = new KeyValue();
		URL lolApisite = new URL("https://kr.api.riotgames.com/lol/league/v4/positions/by-summoner/"+id+"?api_key="+key.keyvalue());
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
	
	public static void main(String[] args) throws IOException {
		Rankinfo rfo = new Rankinfo();
		// 건방진어린이 id
		String x = rfo.contents("OG0Du0hiN3pkMVA6Z8BSvkl76N1heoOYabbD6EFRhJqiKw");
		
		if(x.equals("[]")) {
			System.out.println("랭크전 기록이 없어");
		}else {
			System.out.println("랭크전 기록이 있어"+x);
		}
	}
	
}


