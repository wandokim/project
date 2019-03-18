package sol.desk.wjjst;

import java.util.Random;

public class RandomChamp {
	public String randomChap() {
		
		Random rnd = new Random();
		
		int champCount = rnd.nextInt(11);
		
		switch (champCount) {
		case 1:
			return "Elise";
		case 2:
			return "Ahri";
		case 3:
			return "Akali";
		case 4:
			return "Teemo";
		case 5:
			return "LeeSin";
		case 6:
			return "Fizz";
		case 7:
			return "Thresh";
		case 8:
			return "Amumu";
		case 9:
			return "AurelionSol";
		case 10:
			return "Azir";
		default :
			return "Ahri";
		}
	}

}
