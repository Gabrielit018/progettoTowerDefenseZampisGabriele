public class NemicoNormale extends Nemico{
    int dimensione;
    public NemicoNormale(int velocita, int vita,int dimensione, ArrayList<PVector> percorso) {
        super(velocita,vita,percorso);
        this.dimensione=dimensione;
    } 
    public void display(){
        rect(posizione.x,posizione.y,dimensione,dimensione);
        text(this.vita,posizione.x,posizione.y);
    }
}
