package sol.desk.wjjst;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;

public class Rankinfo {
	
	public String contents(String id) throws IOException {
		URL lolApisite = new URL("https://kr.api.riotgames.com/lol/league/v4/positions/by-summoner/"+id+"?api_key=RGAPI-c96828d6-6222-4808-91f4-26ce2998deca");
		BufferedReader in = new BufferedReader(new InputStreamReader(lolApisite.openStream()));
		String lolApiJson = in.readLine();	
		System.out.println(lolApiJson);
		return lolApiJson;
	}
	
}


