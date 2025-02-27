public class NemicoTank extends Nemico{
    public static final int velocita=2;
    private static final int dimensione=30;
    public NemicoTank(int vita, ArrayList<PVector> percorso) {
        super(velocita,vita,percorso);
    } 
    public void display(){
      fill(0, 0, 255);
      circle(posizione.x,posizione.y,dimensione);
      fill(255);
      textSize(12);
      textAlign(CENTER, CENTER);
      text(this.vita, posizione.x, posizione.y);
    }
}
