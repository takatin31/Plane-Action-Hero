import java.util.*;

public class BonusFactory{
    List<Bonus> bonuses;

    public BonusFactory(){
        bonuses = new ArrayList<Bonus>();
    }

    public void generateBonuse(){
        Bonus newB = new AleaBonus(new PVector(400, 400));
        bonuses.add(newB);
    }

    public void updateBonuses(){
        for (Bonus bonus : bonuses){
            bonus.render();
        }
    }
    
}