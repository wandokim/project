package sol.desk.wjjst;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

public class FindID {
	private final String User_AGENT = "Mozilla/5.0";
	public String find_id(String name) throws IOException {
		KeyValue key = new KeyValue();
		URL lolApisite = new URL("https://kr.api.riotgames.com/lol/summoner/v4/summoners/by-name/"+name+"?api_key="+key.keyvalue());
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
	
	/*
	 * [FindID key 값]
	 * 
	 * id - 유저 고유 값
	 * accountId
	 * puuid
	 * name - 게임 닉네임
	 * profileIconId - 프로필 섬네일
	 * revisionDate
	 * summonerLevel - 유저 레벨
	 */

}