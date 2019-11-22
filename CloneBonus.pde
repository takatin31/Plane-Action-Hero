public class CloneBonus extends Bonus{

    public CloneBonus(PVector pos){
        super(pos);
    }

    public void render(){
        pushMatrix();
        stroke(255);
        fill(255);
        ellipse(pos.x, pos.y, 30, 30);
        noStroke();
        fill(0);
        textSize(20);
        text("C", pos.x-5, pos.y+8);
        popMatrix();
    }

    public void AffecterPlayer(Player player, LaserFactory laserFactory){
        
    }

}