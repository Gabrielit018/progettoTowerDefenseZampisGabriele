public abstract class Nemico{
    int vita;
    float velocita;
    //utilizzo di pvector per descrivere la posizione ed il mvoimento del nemico 
    PVector posizioneIniziale;
    ArrayList<PVector> percorso;
    int indicePuntoDaRaggiungere;

    public Nemico (int velocita,int vita,ArrayList<PVector> percorso;) {
        this.velocita=velocita;
        this.vita=vita;
        this.percorso=new ArrayList<PVector>(percorso);
        this.posizioneIniziale=percorso.get(0).copy();
        this.indicePuntoDaRaggiungere=1;
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
        if(indicePuntoDaRaggiungere<percorso.size()){
            PVector prossimoPunto = percorso.get(indicePuntoDaRaggiungere);
            PVector direzione = PVector.sub(prossimoPunto, pos);
            direzione.setMag(velocita);
            pos.add(direzione);
            if (PVector.dist(pos, prossimoPunto) < velocita) {
                pos = prossimoPunto.copy(); 
                indiceProssimoPunto++;
            }
        }
    }
    public int getX(){
        return this.x;
    }
    public int getY(){
        return this.y;
    }

}

