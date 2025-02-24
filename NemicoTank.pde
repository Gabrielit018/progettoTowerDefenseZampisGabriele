public class NemicoTank extends Nemico{
    int dimensione;
    public NemicoTank (int velocita, int vita,int dimensione, ArrayList<PVector> percorso) {
        super(velocita,vita,percorso);
        this.dimensione=dimensione;
    } 
    
    public void display(){
        circle(posizione.x,posizione.y,dimensione);
        text(this.vita,posizione.x,posizione.y);
    }
}
