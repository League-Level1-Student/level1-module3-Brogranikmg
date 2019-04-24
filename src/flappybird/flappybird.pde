int x = 250;
int y = 250;
float gravity = 0.5;
float limit = 0.9;
int jump = 10;
float vel = 0;
int pipex = 500;
int pipeheight;
boolean click = false;

void setup() {
  size(500, 500);
  pipeheight = (int) random(150, 350);
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
    pipex -= 1;
  }
  fill(176, 232, 107);
  rect(pipex, 0, 50, (pipeheight - 50));
  rect(pipex, (pipeheight + 50), 50, (470 - pipeheight));
  if(pipex == -50) {
    pipeheight = (int) random(150, 350);
    pipex = 500;
  }
//pipex >= 200 && pipex <= 250 && y > pipeheight + 50 && y < pipeheight - 50
  if(pipex >= 188 && pipex <= 262 && (y > pipeheight + 38 || y < pipeheight - 38) || (y > 500 || y < 0)) {
    textSize(32);
    fill(0, 0, 0);
    for(int i = 0; i < 500; i += 50) {
      text("Sorry! You don't live on.", random(0, 200), i);
      text("Osrry! You ddont lvie on.", random(0, 200), i);
    }
    frameRate(0);
  }
}

void mouseClicked() {
  click = true;
  vel = jump * -1;
}