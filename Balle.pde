public class Balle extends Laser{

    public Balle(PVector lpos_, float angle_){
        super(lpos_, angle_);
    }

    public void render(){
        pushMatrix();
        stroke(255);
        strokeWeight(4);
        point(pos.x, pos.y);
        popMatrix();
    }

}