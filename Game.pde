Player player;

void setup(){
  size(1800, 900);
  
  player = new Player(100, 100);
}

void draw(){
  background(51);
  player.draw();
}

void keyPressed(){
  switch (keyCode) 
	{
		case UP:
			player.moveUp();
			break;
		case DOWN:
			player.moveDown();
			break;
		case RIGHT:
			player.moveRight();
			break;
		case LEFT:
			player.moveLeft();
			break;
	}
}
