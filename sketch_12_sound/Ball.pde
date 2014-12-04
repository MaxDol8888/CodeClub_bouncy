class Ball {

  PVector location, velocity;
  float ballSize = 30 + random(10);
  float gravity = 0.1 + random(100)/10000.0;
  float braking = 0.1 + random(100)/10000.0;
  float r = random(255);
  float g = random(255);
  float b = random(255);
  float a = random(128) + 127;

  Ball(float inX, float inY, float inVelX, float inVelY) {
    location = new PVector(inX, inY);
    velocity = new PVector(inVelX, inVelY);
  }

  void update() {

    move();

    if (shouldBounceX()) {
      bounceX();
    }
    if (shouldBounceY()) {
      bounceY();
    }

    draw();
  }

  void move() {
    location.add(velocity);
    velocity.y += gravity;
  }
  
  float getYPosition() {
    return location.y;
  }

  boolean shouldBounceX() {
    return ((location.x > width) || (location.x < 0));
  }

  boolean shouldBounceY() {
    return ((location.y > height) || (location.y < 0));
  }

  void bounceX() {

    velocity.x = velocity.x * -1;
    
    if (location.x < 0) {
      location.x = 0;
    } else if (location.x > width) {
      location.x = width;
    }
  }

  void bounceY() {
    
    velocity.y *= -(1 - braking);
    
    if (location.y < 0) {
      location.y = 0;
    } else if (location.y > height - ballSize/2) {
      location.y = height - ballSize/2;
    }
  }

  void draw() {
    fill(r, g, b, a);
    ellipse(location.x, location.y, ballSize, ballSize);
  }
}
