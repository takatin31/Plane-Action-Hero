public abstract class Bonus{
    protected PVector pos;
    protected boolean activated;
    protected int timeLimit = 2000;
    protected int time;
    protected boolean stopRender;

    public Bonus(PVector pos){
        this.pos = pos;
        time = 0;
        activated = true;
        stopRender = false;
    }

    public PVector getPos(){
        return pos;
    }

    public abstract boolean render();

    public abstract void AffecterPlayer(Player player, LaserFactory laserFactory);

    public boolean manageBonusBefore(){
        time++;
        if (time > timeLimit){
            return false;
        }else{
            return true;
        }
    }

    public abstract boolean manageBonusAfter();

}