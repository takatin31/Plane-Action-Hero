public abstract class Bonus{
    protected PVector pos;
    protected boolean activated;
    protected int timeLimit = 200;

    public Bonus(PVector pos){
        this.pos = pos;
    }

    public abstract void render();

    public abstract void AffecterPlayer(Player player, LaserFactory laserFactory);

    public abstract void manageBonus();

}