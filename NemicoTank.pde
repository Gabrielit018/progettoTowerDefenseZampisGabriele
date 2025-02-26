public class NemicoTank extends Nemico{
    public static final int velocita=2;
    private static final int dimensione=30;
    public NemicoTank(int vita, ArrayList<PVector> percorso) {
        super(velocita,vita,percorso);
    } 
    public void display(){
        circle(posizione.x,posizione.y,dimensione);
        text(this.vita,posizione.x,posizione.y);
    }
}
