public class NemicoVeloce extends Nemico{
    public static final int velocita=4;
    private static final int dimensione=30;
    
    public NemicoVeloce(int vita, ArrayList<PVector> percorso) {
        super(velocita,vita,percorso);
    } 
    public void display(){
        circle(posizione.x,posizione.y,dimensione);
        fill(0);
        textSize(12);
        textAlign(CENTER, CENTER);
        text(this.vita, posizione.x, posizione.y);
    }

}
