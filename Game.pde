Player player;

void setup(){
  size(1800, 900);
  
  player = new Player(100, 500);
}

void draw(){
  background(51);
  noCursor();
  
  player.render();
  player.turn();
  player.update();
  player.edges();
}

void keyReleased() {
  player.setRotation(0);
  player.boosting(false);
}

void keyPressed() {
  if (keyCode == RIGHT) {
    player.setRotation(0.1);
  } else if (keyCode == LEFT) {
    player.setRotation(-0.1);
  } else if (keyCode == UP) {
    player.boosting(true);
  }
}
