public class Player{
    private int life;
    private int speed;
    private int attack;
    private PVector pos;
    private PVector vel;
    private float r;
    private float heading;
    private float rotation;
    private boolean isBoosting = false;


  public Player(float x, float y) {
    pos = new PVector(x, y);
    r = 20;
    heading = 0;
    rotation = 0;
    vel = new PVector(0, 0);
    isBoosting = false;
  }

  void boosting(boolean b) {
    isBoosting = b;
  }

  void update() {
    if (isBoosting) {
      boost();
    }
    pos.add(vel);
    vel.mult(0.99);
  }

  void boost() {
    PVector force = PVector.fromAngle(heading);
    force.mult(0.1);
    vel.add(force);
  }


  void render() {
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(heading + PI / 2);
    fill(0);
    stroke(255);
    triangle(-r, r, r, r, 0, -r);
    popMatrix();
  }

  void edges() {
    if (this.pos.x > width + this.r) {
      this.pos.x = -this.r;
    } else if (this.pos.x < -this.r) {
      this.pos.x = width + this.r;
    }
    if (this.pos.y > height + this.r) {
      this.pos.y = -this.r;
    } else if (this.pos.y < -this.r) {
      this.pos.y = height + this.r;
    }
  }

  void setRotation(float a) {
    rotation = a;
  }

  void turn() {
    heading += rotation;
  }
}
