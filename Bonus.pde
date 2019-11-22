public abstract class Bonus{
    protected PVector pos;

    public Bonus(PVector pos){
        this.pos = pos;
    }

    public abstract void render();

    public abstract void AffecterPlayer(Player player, LaserFactory laserFactory);

}