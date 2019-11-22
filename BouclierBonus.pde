public class BouclierBonus extends Bonus{

    public BouclierBonus(PVector pos){
        super(pos);
    }

    public void render(){
        pushMatrix();
        stroke(255);
        fill(255, 255, 0);
        ellipse(pos.x, pos.y, 30, 30);
        noStroke();
        fill(0);
        textSize(20);
        text("B", pos.x-5, pos.y+8);
        popMatrix();
    }

    public void AffecterPlayer(Player player, LaserFactory laserFactory){
        
    }

}