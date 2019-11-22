public class SpeedBonus extends AleaBonus{

    int time;

    public SpeedBonus(PVector pos){
        super(pos);
        time = 0;
    }

    public void render(){
        super.render();
    }

    public void AffecterPlayer(Player player, LaserFactory laserFactory){
        player.setSpeed(0.2);
    }

    public void manageBonus(){
        time++;
        if (time > timeLimit){
            player.setSpeed(0.1);
            activated = false;
        }
    }

}