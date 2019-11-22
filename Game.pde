private Player player;
private LaserFactory laserFactory;
private BonusFactory bonusFactory;
private EnnemiFactory ennemiFactory;
private int cpt;

void setup(){
  size(1800, 900);
  cpt = 0;
  laserFactory = new LaserFactory(false);

  player = new Player(100, 500, laserFactory);

  bonusFactory = new BonusFactory();

  ennemiFactory = new EnnemiFactory();
  
}

void draw(){
  cpt ++;

  if (cpt == 100){
    cpt = 0;
    bonusFactory.generateBonus();
  }

  background(51);
  noCursor();
  
  player.render();
  player.turn();
  player.update();
  player.edges();

  laserFactory.updateLasers();

  bonusFactory.updateBonuses(player, laserFactory);
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
