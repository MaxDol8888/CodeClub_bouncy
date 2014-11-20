float x, y;
float ballSize = 40;
float speed = 5;

void setup() {
 
 size(640, 240);
 y = ballSize * 1.5;
 x = width/2;
}

void draw() {
  
  background(#92CFED);
  fill(216, 7, 21);
  ellipse(x, y, ballSize, ballSize);
  
  y = y + speed;
}
