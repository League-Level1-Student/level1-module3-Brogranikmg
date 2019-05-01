int x = 400;
int y = 550;
int stroke = 15;
color fg = color(230, 230, 230);
color bg = color(41, 115, 115);
Car one = new Car(int(random(200, 600)), 150, 100, 5);
Car two = new Car(int(random(200, 600)), 200, 100, -5);
Car three = new Car(int(random(200, 600)), 250, 100, 5);
Car four = new Car(int(random(200, 600)), 300, 100, -5);
Car five = new Car(int(random(200, 600)), 350, 100, 5);
Car six = new Car(int(random(200, 600)), 400, 100, -5);

void setup() {
  size(800, 600);
}

void draw() {
  background(bg);
  noFill();
  stroke(fg);
  strokeWeight(stroke);
  line(0, 450, 800, 450);
  line(0, 100, 800, 100);
  fill(bg);
  noStroke();
  ellipse(x, y, 50, 50);
  noFill();
  stroke(fg);
  strokeWeight(stroke);
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
    fill(fg);
    rect(carX, carY - 25, size, 50, 10, 10, 10, 10);
    carX += speed;
  }
}