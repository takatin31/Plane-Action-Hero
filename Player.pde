public class Player{
    private int posX;
    private int posY;
    private int life;
    private int speed;
    private int attack;

    private Player(int posX, int posY){
        this.posX = posX;
        this.posY = posY;
        life = 100;
        speed = 1;
        attack = 1;
    }


    public void draw(){
        noStroke();
        fill(0, 0, 255);
        triangle(posX, posY, posX+40, posY+20, posX, posY+40);
    }

    public void moveUp(){
        this.posY --;
    }

    public void moveDown(){
        this.posY ++;
    }
    public void moveRight(){
        this.posX ++;
    }
    public void moveLeft(){
        this.posX --;
    }
}
