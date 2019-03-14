package sol.desk.wjjst;

import java.util.HashMap;

public class SplitKey {

	public HashMap<String, String> key(String[] line){
		
		String key;
		String value;
		HashMap<String, String> info = new HashMap<String, String>();
		
		for(int i=0;i<line.length;i++) {
			String[] line2 = line[i].split(":");
			key = line2[0];
			value = line2[1];
			info.put(key, value);
		}

		return info;
	}
}
