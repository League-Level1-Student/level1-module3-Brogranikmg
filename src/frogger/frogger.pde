int x = 400;
int y = 550;
int stroke = 15;

color fg = color(230, 230, 230);
color bg = color(41, 115, 115);
Car one = new Car(int(random(200, 600)), 150, int(random(75, 125)), int(random(5, 9)));
Car two = new Car(int(random(200, 600)), 200, int(random(75, 125)), int(random(-5, -9)));
Car three = new Car(int(random(200, 600)), 250, int(random(75, 125)), int(random(5, 9)));
Car four = new Car(int(random(200, 600)), 300, int(random(75, 125)), int(random(-5, -9)));
Car five = new Car(int(random(200, 600)), 350, int(random(75, 125)), int(random(5, 9)));
Car six = new Car(int(random(200, 600)), 400, int(random(75, 125)), int(random(-5, -9)));
PFont font;

void setup() {
  size(800, 600);
  strokeWeight(stroke);
  font = loadFont("Ubuntu-Medium-48.vlw");
}

void draw() {
  background(bg);
  noFill();
  stroke(fg);
  line(0, 450, 800, 450);
  line(0, 100, 800, 100);
  fill(bg);
  noStroke();
  ellipse(x, y, 50, 50);
  noFill();
  stroke(fg);
  ellipse(x, y, 50, 50);
  one.display();
  two.display();
  three.display();
  four.display();
  five.display();
  six.display();
}

void keyPressed() {
  if(key == CODED) {
    if(keyCode == UP && y > 0) {
      y -= 50;
    }
    else if(keyCode == DOWN && y < 600) {
      y += 50;
    }
    else if(keyCode == RIGHT && x < 800) {
      x += 50;
    }
    else if(keyCode == LEFT && x > 0) {
      x -= 50;
    }
  }
}

class Car {
  int carX;
  int carY;
  int size;
  int speed;
  Car(int cx, int cy, int sz, int spd) {
    carX = cx;
    carY = cy;
    size = sz;
    speed = spd;
  }
  void display() {
    fill(bg);
    stroke(fg);
    line(carX, carY, carX + size, carY);
    carX += speed;
    if (carX < 0 - size) {
      carX = width;
    } else if (carX > width) {
     carX = 0 - size; 
    }
    if (intersects(this)) {
      x = 400;
      y = 550;
    }
  }
  int getX() {
     return carX;
  }
  int getY() {
     return carY;
  }
  int getSize() {
    return size;
  }
}

boolean intersects(Car car) {
  if ((y == car.getY()) && (x + 25 > car.getX() && x - 25 < car.getX() + car.getSize())) {
    return true;
  } else {
    return false;
  }
}