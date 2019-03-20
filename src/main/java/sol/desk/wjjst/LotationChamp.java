package sol.desk.wjjst;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

public class LotationChamp {
private final String User_AGENT = "Mozilla/5.0";
	
	public String lotationchamp() throws IOException {
		KeyValue key = new KeyValue();
		URL lolApisite = new URL("https://kr.api.riotgames.com/lol/platform/v3/champion-rotations?api_key="+key.keyvalue());
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
		LotationChamp l = new LotationChamp();
		System.out.println(l.lotationchamp());
		
		SplitStr s = new SplitStr();
		
		String[] wan = s.split(l.lotationchamp());
		for(int i=0; i<wan.length;i++) {
			System.out.println(wan[i]);
		}
	}
}
