float ballSize = 40;
PVector location, velocity;
float gravity = 0.1;
float braking = 0.09;

void setup() {

  size(640, 240);
  location = new PVector(width/2, ballSize * 1.5);
  velocity = new PVector(2.5, 5);
}

void draw() {

  background(#92CFED);
  fill(216, 7, 21);
  ellipse(location.x, location.y, ballSize, ballSize);

  // location = location + velocity;
  location.add(velocity);
  velocity.y += gravity;
  
  if ((location.x > width) || (location.x < 0)) {
    velocity.x = velocity.x * -1;
  }
  if ((location.y > height) || (location.y < 0)) {
    velocity.y = velocity.y * -1;
  }

  if (location.y + ballSize/2 > height) {
    velocity.y *= -(1 - braking);
    
    location.y = height - ballSize/2;
  }

  if (location.x + ballSize/2 >= width || location.x - ballSize/2 <= 0) {
    
    velocity.x *= -(1 - braking);
    velocity.y *= (1 - braking);
  }
  
  if (location.x > width + ballSize/2) {
    location.x = width - ballSize/2;
  } else if (location.x < ballSize/2) {
    location.x = ballSize/2;
  }
}
