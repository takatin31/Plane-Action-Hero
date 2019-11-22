public class CloneBonus extends Bonus{

    int time;
    Player playerClone;
    LaserFactory laserFactoryClone;

    public CloneBonus(PVector pos){
        super(pos);
        time = 0;
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
        try{
            playerClone = (Player)player.clone();
            laserFactoryClone = (LaserFactory)laserFactory.clone();
            playerClone.setLaserFactory(laserFactoryClone);
        }catch(CloneNotSupportedException e){
            
        }
    }

    public void manageBonus(){
        time++;
        if (time > timeLimit){
            activated = false;
        }else{
            playerClone.render();
            playerClone.turn();
            playerClone.update();
            playerClone.edges();

            laserFactoryClone.updateLasers();
        }
    }
}