import java.awt.Color;

import info.gridworld.actor.Actor;
import info.gridworld.actor.Bug;
import info.gridworld.actor.Flower;
import info.gridworld.grid.Grid;
import info.gridworld.grid.Location;
import info.gridworld.world.World;

public class Gridworld {
	public static void main(String[] args) {
		World world = new World();
		world.show();
		Bug smallrat = new Bug();
		Bug radrat = new Bug();
		Flower tastyrat = new Flower(Color.orange);
		Flower angryrat = new Flower(Color.pink);
		Location largerat = new Location(6,4);
		Location coolrat = new Location(3,7);
		Location leftrat = new Location(3,6);
		Location rightrat = new Location(3,8);
		world.add(largerat, smallrat);
		world.add(coolrat, radrat);
		radrat.setColor(Color.blue);
		radrat.turn();
		world.add(leftrat, tastyrat);
		world.add(rightrat, angryrat);
	}
}
