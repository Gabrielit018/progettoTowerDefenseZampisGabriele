public class NemicoVeloce extends Nemico{
    public static final int velocita=4;
    private static final int dimensione=30;
    
    public NemicoVeloce(int vita, ArrayList<PVector> percorso) {
        super(velocita,vita,percorso);
    } 
    public void display(){
        fill(135,77,191);
        circle(posizione.x,posizione.y,dimensione);
        fill(255);
        circle(posizione.x,posizione.y,dimensione/2);
        fill(0);
        textSize(12);
        textAlign(CENTER, CENTER);
        text(this.vita, posizione.x, posizione.y);
    }

}
