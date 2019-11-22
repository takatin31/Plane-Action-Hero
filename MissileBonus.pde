public class MissileBonus extends Bonus{



    public MissileBonus(PVector pos){
        super(pos);
    }

    public boolean render(){
        if ((!stopRender)){
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
        return activated;
    }

    public void AffecterPlayer(Player player, LaserFactory laserFactory){
        time = 0;
        activated = true;
        laserFactory.setActivateMissiles(true);
        stopRender = true;
    }

    public boolean manageBonusBefore(){
        return super.manageBonusBefore();
    }

    public boolean manageBonusAfter(){
        if (stopRender){
            time++;
            if (time > timeLimit){
                laserFactory.setActivateMissiles(false);
                activated = false;
            }
        }
        return activated;
    }

}