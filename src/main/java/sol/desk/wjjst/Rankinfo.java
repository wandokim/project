package sol.desk.wjjst;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import javax.print.attribute.standard.Fidelity;
import javax.swing.JOptionPane;

public class Rankinfo {
	
	public List contents() throws Exception {
		
		FindID id = new FindID();
		List name = id.id("타잔");
		
		URL lolApisite1 = new URL("https://kr.api.riotgames.com/lol/league/v4/positions/by-summoner/"
				+ name.get(0)+"?api_key=RGAPI-b92e8a3b-3c59-438e-bd92-2d9b77cd9d73");
		
		URL lolApisite = new URL("https://kr.api.riotgames.com/lol/league/v4/positions/by-summoner/"+name.get(0)+"?api_key=RGAPI-343c33b1-1e1f-48c2-8772-36790f2361fa");
		
		BufferedReader in = new BufferedReader(new InputStreamReader(lolApisite.openStream()));
		String lolApiJson = in.readLine();
		
		String b = lolApiJson.replaceAll("\\[", "");
		b = b.replaceAll("\\]", "");
		b = b.replaceAll("\\{", "");
		b = b.replaceAll("\\}", "");
		b =b.replaceAll(" ", ""); 
		b = b.replaceAll("\"", "");		  
		  
		String[] c = b.split(","); 
		
		String tier = c[4];
		String last_tier = tier.substring(tier.indexOf(":")+1,tier.length() );
		
		String leaguePoints = c[6];
		String last_leaguePoints = leaguePoints.substring(leaguePoints.indexOf(":")+1,leaguePoints.length() );
		
		String wins = c[7];
		String last_wins = wins.substring(wins.indexOf(":")+1,wins.length() );
		
		String losses = c[8];
		String last_losses = losses.substring(losses.indexOf(":")+1,losses.length() );
		
		List list = new ArrayList();
		list.add(last_tier);
		list.add(last_leaguePoints);
		list.add(last_wins);
		list.add(last_losses);	
		list.add(name.get(1));
		
		return list;		  
	}
	
}


