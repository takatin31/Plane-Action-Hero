import java.util.*;

class EnnemiFactory{
    List<Ennemi> ennemies;

    public EnnemiFactory(){
        ennemies = new ArrayList<Ennemi>();
    }

    public void generateEnnemi(){
        
        int choice = floor(random(0, 2));
        PVector pos;

        int result = floor(random(0, 3));
        Ennemi newE = null;

        if (choice == 0){
            pos = new PVector(0, random(0, height));
        }else{
            pos = new PVector(random(0, width), 0);
        }
         
        switch (result) {
            case 0:
                newB = new AvionsChasse(pos);
                break;
            case 1:
                newB = new GrandAvion(pos);
                break;
            case 2:
                newB = new Helicoptere(pos);
                break;
        }
        
        if (newE != null)
            ennemies.add(newE);
    }
}