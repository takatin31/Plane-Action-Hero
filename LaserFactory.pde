import java.util.*;

public class LaserFactory{

    private boolean missilesActivated;
    List<Laser> lasers;
    int nbrMissilesShooted;
    int limitMissiles = 20;

    public LaserFactory(boolean mA){
        this.missilesActivated = mA;
        nbrMissilesShooted = 0;
        lasers = new ArrayList<Laser>();
    }

    public void shoot(PVector pos, float heading){
        if (missilesActivated){
            lasers.add(new Missile(pos, heading));
            nbrMissilesShooted++;
            if (nbrMissilesShooted > limitMissiles){
                missilesActivated = false;
            }
        }else{
            
            lasers.add(new Balle(pos, heading));
        }
    }

    public void updateLasers(){
        for (int i = lasers.size() - 1; i >= 0; i--){
            Laser laser = lasers.get(i);
            laser.render();
            laser.update();
            if (laser.offscreen()) {
                lasers.remove(i);
            }
        }
    }

    public void activateMissiles(){
        this.missilesActivated = true;
    }

}