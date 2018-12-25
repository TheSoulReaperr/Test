flake flake;
ArrayList<flake> snowflakes;

void setup() {
  frameRate(1200);
  fullScreen();
  flake = new flake(width/2, random(0,PI));
  snowflakes = new ArrayList<flake>();
}

void draw() {
  translate(width/2, height/2);
  background(0);
  //flake.update();
  while(!flake.finished() && !flake.intersect(snowflakes)) {
    flake.update();
  }
  snowflakes.add(flake);
  flake = new flake(width/2, 0);
  for (int i=0; i<6; i++) {
    rotate(PI/3);
    flake.Draw();
    for (flake s : snowflakes) {
      s.Draw();
    }

    pushMatrix();
    scale(1, -1);
    flake.Draw();
    for (flake s : snowflakes) {
      s.Draw();
    }
    popMatrix();
  }
}
