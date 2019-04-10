int x = 250;
int y = 250;
int gravity = 1;
float limit = 0.9;
int jump = 50;
int vel = 0;
boolean click = false;

void setup() {
  size(500, 500);
}

void draw() {
  background(64, 121, 140);
  fill(188, 164, 85);
  noStroke();
  ellipse(x, y, 25, 25);
  if(click) {
    y += vel;
    vel += gravity;
    vel *= limit;
  }
}

void mouseClicked() {
  click = true;
  vel -= jump;
}