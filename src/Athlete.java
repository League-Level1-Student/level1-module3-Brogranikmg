public class Athlete {

	static int nextBibNumber = 1;
	static String raceLocation = "New York";
	static String raceStartTime = "9.00am";
	
	String name;
	int speed;
	int bibNumber;

	Athlete (String name, int speed){
	     this.name = name;
	     this.speed = speed;
	     bibNumber = nextBibNumber;
	     nextBibNumber++;
	}
	
	public static void main(String[] args) {
	     Athlete sonic = new Athlete("Sonic the Stoic", 0);
	     Athlete rock = new Athlete("Dwayne \"The Rock\" Rock Boulder Balboa", 27);
	     System.out.println(sonic.name);
	     System.out.println(rock.name);
	     System.out.println(sonic.bibNumber);
	     System.out.println(rock.bibNumber);
	     System.out.println(raceLocation);
	}
}