public class GameManager{
    Nemici nemici;
    Griglia griglia;
    Torri torri;
    ArrayList<PVector> percorso;
    GestioneVita vitaCorrente;
    public GameManager () {
        griglia = new Griglia(800);
        percorso = new ArrayList<PVector>();
        percorso.add(new PVector(0, 40));
        percorso.add(new PVector(440, 40));
        percorso.add(new PVector(440, 440));
        percorso.add(new PVector(800, 440));
        
        this.vitaCorrente=new GestioneVita();
        nemici=new Nemici(percorso,vitaCorrente);
        torri=new Torri(griglia,nemici);
        stroke(119,221,119);
    }
    public void gioco(){
        if(vitaCorrente.getVita()>0){
            griglia.displayGriglia();
            nemici.gestioneNemici(torri);
            torri.aggiornaTorri();
            textAlign(CENTER, CENTER);
            textSize(30);
            text("vite: " +vitaCorrente.getVita(),740,20);
        }else{
            endGame();
        }
    }
    private void endGame(){
        background(0,0,0, 1);
        textSize(60);
        textAlign(CENTER, CENTER);
        fill(255,0,0);
        text("GAME OVER",height/2,width/2);
    }
    public void diminuisciVita(){
        vitaCorrente.diminuisciVita();
    }
    

}
