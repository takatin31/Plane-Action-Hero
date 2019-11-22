public class BouclierBonus extends Bonus{


    Player player;
    

    public BouclierBonus(PVector pos){
        super(pos);
    }

    public boolean render(){
        if (!stopRender)
        {
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
        return activated;
    }

    public void AffecterPlayer(Player player, LaserFactory laserFactory){
        this.player = player;
        player.setBouclier(true);
        activated = true;
        stopRender = true;
    }

    public boolean manageBonusBefore(){
        return super.manageBonusBefore();
    }

    public boolean manageBonusAfter(){
        if (stopRender){
            time++;
            if (time > timeLimit){
                player.setBouclier(false);
                activated = false;
            }
        }
        return activated;
    }

}
