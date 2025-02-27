public class NemicoNormale extends Nemico{
    public static final int velocita=3;
    private static final int dimensione=30;
    public NemicoNormale(int vita, ArrayList<PVector> percorso) {
        super(velocita,vita,percorso);
       
    } 
    public void display(){
        rect(posizione.x-dimensione/2,posizione.y-dimensione/2,dimensione,dimensione);
        text(this.vita,posizione.x,posizione.y);
    }
}
