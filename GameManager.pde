public class GameManager{
    Nemici nemici;
    Griglia griglia;
    Torri torri;
    ArrayList<PVector> percorso;
    GestioneVita vitaCorrente;
    public GameManager () {
        griglia = new Griglia(800);
        percorso = new ArrayList<PVector>();
        percorso.add(new PVector(50, 50));
        percorso.add(new PVector(400, 50));
        percorso.add(new PVector(400, 300));
        percorso.add(new PVector(750, 300));
        this.vitaCorrente=new GestioneVita();
        nemici=new Nemici(percorso,vitaCorrente);
        torri=new Torri(griglia,nemici);
        
    }
    public void gioco(){
        if(vitaCorrente.getVita()>0){
            textAlign(CENTER, CENTER);
            textSize(30);
            text(vitaCorrente.getVita(),700,20);
            griglia.displayGriglia();
            nemici.gestioneNemici(torri);
            torri.aggiornaTorri();

        }else{
            endGame();
        }
    }
    private void endGame(){
        background(255,255,255, 1);
        textSize(60);
        textAlign(CENTER, CENTER);
        text("GAME OVER",height/2,width/2);
    }
    public void diminuisciVita(){
        vitaCorrente.diminuisciVita();
    }
    

}
