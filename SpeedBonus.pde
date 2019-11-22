public class SpeedBonus extends AleaBonus{



    public SpeedBonus(PVector pos){
        super(pos);
    }

    public boolean render(){
        return super.render();
    }

    public void AffecterPlayer(Player player, LaserFactory laserFactory){
        player.setSpeed(0.2);
        time = 0;
        activated = true;
        stopRender = true;
    }

    public boolean manageBonusBefore(){
        time++;
        if (time > timeLimit){
            return false;
        }else{
            return true;
        }
    }

    public boolean manageBonusAfter(){
        if (stopRender){
            time++;
            if (time > timeLimit){
                player.setSpeed(0.1);
                activated = false;
            }
        }
        return activated;
    }



}