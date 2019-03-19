package sol.desk.wjjst;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class CallengerInfoTest {
private final String User_AGENT = "Mozilla/5.0";
	
	public String challengerinfo() throws IOException {
		KeyValue key = new KeyValue();
		URL lolApisite = new URL("https://kr.api.riotgames.com/lol/league/v4/challengerleagues/by-queue/RANKED_SOLO_5x5?api_key="+key.keyvalue());
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
	
	
	public static void main(String[] args) throws Exception {
		ChallengerINFO c = new ChallengerINFO();
		
		SplitStr str = new SplitStr();	
		
		List<String> result = new ArrayList<String>();
		
		
		String[] cham = str.split(c.challengerinfo());
		for(int i=0; i<300; i++){
			String summonerName = cham[5+(10*i)];
			String leaguePoints = cham[(5+(10*i))+1];
			String wins = cham[(5+(10*i))+3];
			String losses = cham[(5+(10*i))+4];					
			 
			result.add(summonerName); 
			result.add(leaguePoints);
			result.add(wins);
			result.add(losses);
		}
		
		//System.out.println(result);
		String[] r_result = result.toArray(new String[result.size()]);
		String[] wan = {};
		for(int i =0; i<=1199; i++) {			
			wan[i] = r_result[i].substring(r_result[i].indexOf(":")+1,r_result[i].length());			
		}
		
		System.out.println("----------");
		System.out.println(wan.length);
		
		
		
		
		
		
	}
}
