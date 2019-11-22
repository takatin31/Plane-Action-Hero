public abstract class Ennemi{
    PVector pos;
    

    public Ennemi(PVector pos){
        this.pos = pos;
    }

    public abstract void render();

    public abstract void update();

    public void shoot(){

    }
} 