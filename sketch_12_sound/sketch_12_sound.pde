
import ddf.minim.*;

Minim minim;
AudioPlayer player;

int numBalls = 1;
Ball[] ballArray;

void setup() {

  size(640, 640);
  minim = new Minim(this);
  player = minim.loadFile("sleighride.wav");
  player.play();

  ballArray = new Ball[numBalls];

  for (int i = 0; i < numBalls; i++) {

    Ball bouncy = new Ball(width/2, 60, random(5), random(5));
    ballArray[i] = bouncy;
  }
}

void draw() {

  background(#92CFED);

  for (int i = 0; i < ballArray.length; i++) {
    Ball localBall = ballArray[i];
    localBall.update();
    float ballYPosition = localBall.getYPosition();
    float volume = map(ballYPosition, height, 0, -80, 14);
    player.setGain(volume);
  }
}

