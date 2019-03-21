package sol.desk.wjjst;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class FileRout {
	
	public List<String> subDirList(String source){
		File dir = new File(source); 
		File[] fileList = dir.listFiles();
		List<String> list = new ArrayList<String>();

		for(int i = 0 ; i < fileList.length ; i++){
			File file = fileList[i]; 
			list.add(file.getName());
		}
		return list;
	}
	
	public static void main(String[] args) {
		FileRout fr = new FileRout();
		String rout = "C:\\Users\\soldesk\\Desktop\\Project4\\project\\src\\main\\webapp\\WEB-INF\\views\\img\\champion";
		List<String> list = fr.subDirList(rout);
		
		for(String str : list) {
			System.out.println(str);
		}
	}
}
