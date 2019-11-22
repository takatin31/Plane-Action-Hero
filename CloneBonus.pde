public class CloneBonus extends Bonus{


    Player playerClone;
    LaserFactory laserFactoryClone;

    public CloneBonus(PVector pos){
        super(pos);
    }

    public boolean render(){
        if (!stopRender){
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
        return activated;
    }

    public void AffecterPlayer(Player player, LaserFactory laserFactory){
        try{
            laserFactoryClone = new LaserFactory(false);
            playerClone = new Player(random(0, width), random(0, height), laserFactory);
            player.clone();
            //playerClone.setLaserFactory(laserFactoryClone);
            playerClone.setMoveRandom(true);
            activated = true;
            stopRender = true;
        }catch(CloneNotSupportedException e){
            
        }
    }

    public boolean manageBonusBefore(){
        return super.manageBonusBefore();
    }

    public boolean manageBonusAfter(){
        if (stopRender){
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
        return activated;
    }
}