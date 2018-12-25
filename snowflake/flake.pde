
class flake {
  PVector pos;
  float r = 2.5;
  color c;
  
  flake(float x,float y) {
    pos = new PVector(x,y);
    c = color(random(100,255),random(100,255),random(100,255));
  }
  
  void update() {
    pos.x -=1;
    pos.y -=random(-5,5);
    float angle = pos.heading();
    angle = constrain(angle,0,PI/6);
    float magnitude = pos.mag();
    pos = PVector.fromAngle(angle);
    pos.setMag(magnitude);
  }
  
  void Draw() {
    fill(255);
    noStroke();
    ellipse(pos.x,pos.y,r*2,r*2);
  }
  
  boolean intersect(ArrayList<flake> snowflakes) {
    boolean result = false;
    for(flake s: snowflakes) {
      float d = dist(s.pos.x,s.pos.y,pos.x,pos.y);
      if(d<=r*2) {
        result = true;
        break;
      }
    }
    return result;
  }
  
  boolean finished() {
    return(pos.x<1);
  }
}
