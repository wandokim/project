package sol.desk.wjjst;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

public class User_AllChampPOINT {
private final String User_AGENT = "Mozilla/5.0";
	
	public String user_allchamppoint(String id) throws IOException {
		URL lolApisite = new URL("https://kr.api.riotgames.com/lol/champion-mastery/v4/scores/by-summoner/"+id+"?api_key=RGAPI-5eb7bc0e-9610-4135-842c-f0c766107349");
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
		User_AllChampPOINT u = new User_AllChampPOINT();
		System.out.println(u.user_allchamppoint("OG0Du0hiN3pkMVA6Z8BSvkl76N1heoOYabbD6EFRhJqiKw"));
	}
}
