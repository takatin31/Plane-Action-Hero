public class Player implements Cloneable{
    private int life;
    private float speed;
    private int attack;
    private PVector pos;
    private PVector vel;
    private float r;
    private float heading;
    private float rotation;
    private boolean isBoosting;
    private LaserFactory laserFactory;
    private boolean isBouclier;
    private boolean moveRandom;
    private int cpt;


    public Player(float x, float y, LaserFactory laserFactory) {
        pos = new PVector(x, y);
        r = 20;
        heading = 0;
        rotation = 0;
        vel = new PVector(0, 0);
        isBoosting = false;
        life = 100;
        attack = 1;
        speed = 0.1;
        this.laserFactory = laserFactory;
        isBoosting = false;
        isBouclier = false;
        moveRandom = false;
        cpt = 0;
    }

    void boosting(boolean b) {
        isBoosting = b;
    }

    void setSpeed(float s){
        this.speed = s;
    }

    void update() {
        cpt++;
        if (moveRandom){
            if (cpt % 10 == 0){
                isBoosting = true;
                shoot();
                if (cpt == 30){
                    rotation = rotation + random(-10, 10);
                    cpt = 0;
                }
            }else{
                rotation = 0;
                isBoosting = false;
            }
        }
        
        if (isBoosting) {
            boost();
        }
        pos.add(vel);
        vel.mult(0.99);
    }

    void shoot(){
        laserFactory.shoot(pos, heading);
    }

    void setLaserFactory(LaserFactory laserFactory){
        this.laserFactory = laserFactory;
    }

    int getLife(){
        return this.life;
    }

    void setLife(int life){
        this.life= life;
    }

    void setMoveRandom(boolean rM){
        moveRandom = rM;
    }

    void boost() {
        PVector force = PVector.fromAngle(heading);
        force.mult(speed);
        vel.add(force);
    }

    public void setBouclier(boolean b){
        isBouclier = b;
    }

    public boolean getIsBouclier(){
        return isBouclier;
    }


    void render() {
        stroke(255);
        noFill();
        rect(pos.x-20, pos.y-2*r, 40, 5);
        noStroke();
        fill(0, 255, 0);
        rect(pos.x-20, pos.y-2*r, (40*life)/100, 5);
        pushMatrix();
        translate(pos.x, pos.y);
        rotate(heading + PI / 2);
        fill(0);
        stroke(255);
        triangle(-r, r, r, r, 0, -r);
        if (isBouclier){
            noStroke();
            fill(255, 255, 255, 100);
            ellipse(0 , 0, 3*r, 3*r);

        }
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

    public PVector getPos(){
        return pos;
    }

    public Object clone() throws CloneNotSupportedException 
    { 
        return super.clone(); 
    } 
}
