package sol.desk.wjjst;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public class MasterInfo {
private final String User_AGENT = "Mozilla/5.0";
	
	public String masterinfo() throws IOException {
		KeyValue key = new KeyValue();
		URL lolApisite = new URL("https://kr.api.riotgames.com/lol/league/v4/masterleagues/by-queue/RANKED_SOLO_5x5?api_key="+key.keyvalue());
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

	public List<Integer> SortLP() throws IOException {
		MasterInfo mi = new MasterInfo();
		SplitStr ss = new SplitStr();
		String[] x = ss.split(mi.masterinfo());
		List<String> liststr = new ArrayList<String>();
		for(int i=6;i<x.length;i+=10) {
			liststr.add(x[i].replace("leaguePoints:", ""));
		}
		ArrayList<Integer> listint = new ArrayList<Integer>();
		
		for(String str : liststr) {
			listint.add(Integer.parseInt(str));
		}
		
		//Collections.sort(listint);
		//Collections.reverse(listint);
		return listint;
	}
}
