public class LifeBonus extends AleaBonus{

    public LifeBonus(PVector pos){
        super(pos);
    }

    public void render(){
        super.render();
    }

    public void AffecterPlayer(Player player, LaserFactory laserFactory){
        player.setLife((player.getLife()+20)%100+1);
        activated = false;
    }

    public void manageBonus(){
        
    }

}