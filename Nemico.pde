public abstract class Nemico{
    protected int vita;
    protected float velocita;
    //utilizzo di pvector per descrivere la posizione ed il mvoimento del nemico 
    protected PVector posizione;
    protected ArrayList<PVector> percorso;
    protected int indicePuntoDaRaggiungere;

    public Nemico (float velocita,int vita,ArrayList<PVector> percorso) {
        this.velocita=velocita;
        this.vita=vita;
        this.percorso=new ArrayList<PVector>(percorso);
        this.posizione=percorso.get(0).copy();
        this.indicePuntoDaRaggiungere=1;
    }
    public abstract void display();
    public boolean eMorto(){
        if(vita<=0){
            return true;
        }else{
            return false;
        }
    }
    public void diminuisciVita(int danno){
        vita-=danno;
    }
    public void muovi(){
        if(indicePuntoDaRaggiungere<percorso.size()){
            PVector prossimoPunto = percorso.get(indicePuntoDaRaggiungere);
            PVector direzione = PVector.sub(prossimoPunto, posizione);
            direzione.setMag(velocita);
            posizione.add(direzione);
            if (PVector.dist(posizione, prossimoPunto) < velocita) {
                posizione = prossimoPunto.copy(); 
                indicePuntoDaRaggiungere++;
            }
        }
    }
    public void aggiornamento(){
        muovi();
        display();
       
    }
    public boolean eArrivato(){
        if(indicePuntoDaRaggiungere>=percorso.size()){
            return true;
        }else{
            return false;
        }
    }
    

}
