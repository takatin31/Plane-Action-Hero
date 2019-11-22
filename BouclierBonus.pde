public class BouclierBonus extends Bonus{

    int time;
    Player player;
    

    public BouclierBonus(PVector pos){
        super(pos);
        time = 0;
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
        this.player = player;
        player.setBouclier(true);
    }

    public void manageBonus(){
        time++;
        if (time > timeLimit){
            player.setBouclier(false);
            activated = false;
        }
    }

}
