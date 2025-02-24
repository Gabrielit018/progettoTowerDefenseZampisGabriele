public abstract class Nemico{
    int vita;
    float velocita;
    //utilizzo di pvector per descrivere la posizione ed il mvoimento del nemico 
    PVector posizioneIniziale;
    ArrayList<PVector> percorso;

    public Nemico (int velocita,int vita) {
        this.velocita=velocita;
        this.vita=vita;
    }
    public abstract void display(int dimensione);
    public boolean eMorto(){
        if(vita<=0){
            return true;
        }else{
            return false;
        }
    }
    public void diminuisciVita(){
        vita--;
    }
    public void muovi(){

    }
    public int getX(){
        return this.x;
    }
    public int getY(){
        return this.y;
    }

}

