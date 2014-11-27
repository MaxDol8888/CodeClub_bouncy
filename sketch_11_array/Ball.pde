class Ball {

  PVector location, velocity;
  int ballSize = 40;
  float gravity = 0.1;
  float braking = 0.1;

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

  boolean shouldBounceX() {
    return ((location.x > width) || (location.x < 0));
  }

  boolean shouldBounceY() {
    return ((location.y > height) || (location.y < 0));
  }

  void bounceX() {

    velocity.x = velocity.x * -1;
  }

  void bounceY() {
    
    velocity.y *= -(1 - braking);
  }

  void draw() {
    fill(216, 7, 21);
    ellipse(location.x, location.y, ballSize, ballSize);
  }
}
