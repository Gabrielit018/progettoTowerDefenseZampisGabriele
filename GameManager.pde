public class GameManager{
    Nemici nemici;
    Griglia griglia;
    Torri torri;
    ArrayList<PVector> percorso;
    public int vitaTorrePrincipale;
    public GameManager () {
        percorso = new ArrayList<PVector>();
        percorso.add(new PVector(50, 50));
        percorso.add(new PVector(400, 50));
        percorso.add(new PVector(400, 300));
        percorso.add(new PVector(750, 300));
        nemici=new Nemici(percorso);
        torri=new Torri(griglia,nemici);
        vitaTorrePrincipale=10;
    }
    public void gioco(){
        if(vitaTorrePrincipale>=0){
            
        }else{
            endGame();
        }
    }
    private void endGame(){
        background(255,255,255, 1);
        textAlign(CENTER, CENTER);
        text("GAME OVER",height/2,width/2);
    }
    public void diminuisciVita(){
        vitaTorrePrincipale--;
    }
    

}
