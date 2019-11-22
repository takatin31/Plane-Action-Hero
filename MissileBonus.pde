public class MissileBonus extends Bonus{

    public MissileBonus(PVector pos){
        super(pos);
    }

    public void render(){
        pushMatrix();
        stroke(255);
        fill(255, 0, 0);
        ellipse(pos.x, pos.y, 30, 30);
        noStroke();
        fill(255);
        textSize(20);
        text("M", pos.x-5, pos.y+8);
        popMatrix();
    }

    public void AffecterPlayer(Player player, LaserFactory laserFactory){
        laserFactory.activateMissiles();
    }

}