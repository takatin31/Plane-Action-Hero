private Player player;
private LaserFactory laserFactory;
private BonusFactory bonusFactory;

void setup(){
  size(1800, 900);
  laserFactory = new LaserFactory(false);

  player = new Player(100, 500, laserFactory);
  
  bonusFactory = new BonusFactory();
  bonusFactory.generateBonuse();
}

void draw(){
  background(51);
  noCursor();
  
  player.render();
  player.turn();
  player.update();
  player.edges();

  laserFactory.updateLasers();

  bonusFactory.updateBonuses();
}

void keyReleased() {
  player.setRotation(0);
  player.boosting(false);
}

void keyPressed() {
  if (key == ' ') {
    player.shoot();
  } else if (keyCode == RIGHT) {
    player.setRotation(0.1);
  } else if (keyCode == LEFT) {
    player.setRotation(-0.1);
  } else if (keyCode == UP) {
    player.boosting(true);
  }
}
