import java.util.*;

public class BonusFactory{
    List<Bonus> bonuses;

    public BonusFactory(){
        bonuses = new ArrayList<Bonus>();
    }

    public void generateBonus(){
        int result = floor(random(0, 4));
        Bonus newB = null;
        PVector pos = new PVector(random(0, width), random(0, height));
        switch (result) {
            case 0:
                newB = new MissileBonus(pos);
                break;
            case 1:
                newB = new BouclierBonus(pos);
                break;
            case 2:
                newB = new CloneBonus(pos);
                break;
            case 3:
                int r = floor(random(0, 2));
                if (r == 0){
                    newB = new LifeBonus(pos);
                }else{
                    newB = new SpeedBonus(pos);
                }
                break;
        }
        
        if (newB != null)
            bonuses.add(newB);
    }

    public void updateBonuses(Player player, LaserFactory laserFactory){
        ArrayList<Integer> indexes = new ArrayList<Integer>();
        
        for (int i = bonuses.size() - 1; i >= 0; i--){
            if (!bonuses.get(i).manageBonusBefore()){
                bonuses.remove(i);
            }else{
                bonuses.get(i).render();
                
                
                boolean delete = !bonuses.get(i).manageBonusAfter();
                if (delete){
                    bonuses.remove(i);
                }else{
                    float d = dist(bonuses.get(i).getPos().x, bonuses.get(i).getPos().y, player.getPos().x, player.getPos().y);
                    if (d < 20){
                        bonuses.get(i).AffecterPlayer(player, laserFactory);
                    }
                }
                
                
            }
            
        }
    }

    
}