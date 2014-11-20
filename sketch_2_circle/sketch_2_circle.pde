int x, y;
int ballSize = 40;

void setup() {
 
 size(640, 240);
 x = width/2;
}

void draw() {
  
  background(#92CFED);
  fill(216, 7, 21);
  ellipse(x, y, ballSize, ballSize);
}
