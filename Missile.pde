public class Missile extends Laser{

    public Missile(PVector lpos_, float angle_){
        super(lpos_, angle_);
    }

    public void render(){
        pushMatrix();
        fill(255, 0, 0);
        ellipse(pos.x, pos.y, 10, 10);
        popMatrix();
    }

}