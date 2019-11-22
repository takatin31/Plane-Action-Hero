public class AleaBonus extends Bonus{

    public AleaBonus(PVector pos){
        super(pos);
    }

    public void render(){
        pushMatrix();
        stroke(255);
        fill(0);
        ellipse(pos.x, pos.y, 30, 30);
        noStroke();
        fill(255);
        textSize(20);
        text("A", pos.x-5, pos.y+8);
        popMatrix();
    }

    public void AffecterPlayer(Player player){
        
    }

}