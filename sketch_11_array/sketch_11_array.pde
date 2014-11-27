
int numBalls = 100;
Ball[] ballArray;

void setup() {

  size(640, 240);
  
  ballArray = new Ball[numBalls];
  
  for (int i = 0; i < numBalls; i++) {
   
    Ball bouncy = new Ball(width/2, 60, random(2.5), random(5));
    ballArray[i] = bouncy;
  }
}

void draw() {

  background(#92CFED);
  
  for (int i = 0; i < ballArray.length; i++) {
    Ball localBall = ballArray[i];
    localBall.update();
  }
}
