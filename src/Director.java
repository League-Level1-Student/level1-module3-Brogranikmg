
public class Director {
	public static void main(String[] args) {
		Movie tooth = new Movie("Aaaaaaah! Help! I Have 64 Teeth!", 2);
		Movie bird = new Movie("Birdemic 3", 5);
		Movie one = new Movie("The One-Star Man", 1);
		Movie worms = new Movie("The Worms of Pripyat: A Documentary", 4);
		Movie twilight = new Movie("Twilight", 1);
		twilight.getTicketPrice();
		NetflixQueue queue = new NetflixQueue();
		queue.addMovie(tooth);
		queue.addMovie(bird);
		queue.addMovie(one);
		queue.addMovie(worms);
		queue.addMovie(twilight);
	}
}
