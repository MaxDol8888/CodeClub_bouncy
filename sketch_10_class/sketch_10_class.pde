
Ball bouncy;

void setup() {

  size(640, 240);
  bouncy = new Ball(width/2, 60, 2.5, 5);
}

void draw() {

  background(#92CFED);
  bouncy.update();
}
