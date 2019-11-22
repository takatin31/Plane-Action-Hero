public class LifeBonus extends AleaBonus{

    public LifeBonus(PVector pos){
        super(pos);
    }

    public boolean render(){
        return super.render();
    }

    public void AffecterPlayer(Player player, LaserFactory laserFactory){
        player.setLife((player.getLife()+20)%100+1);
        activated = true;
        stopRender = true;
    }

    public boolean manageBonusBefore(){
        return super.manageBonusBefore();
    }

    public boolean manageBonusAfter(){
        activated = false;
        return activated;
    }

}