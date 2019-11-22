public abstract class Laser{
    PVector pos;
    PVector vel;

    Laser(PVector lpos_, float angle_) {
        pos = new PVector(lpos_.x, lpos_.y);
        vel = PVector.fromAngle(angle_);
        vel.mult(10);
    }

    public abstract void render();

    public void update(){
        pos.add(vel);
    }

    public boolean offscreen() {
        if (pos.x > width || pos.x < 0) {
        return true;
        }
        
        if (pos.y > height || pos.y < 0) {
        return true;
        }
        return false;
    }
}