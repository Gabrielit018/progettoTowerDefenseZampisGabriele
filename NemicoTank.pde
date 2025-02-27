public class NemicoTank extends Nemico{
    public static final int velocita=2;
    private static final int dimensione=30;
    public NemicoTank(int vita, ArrayList<PVector> percorso) {
        super(velocita,vita,percorso);
    } 
    public void display(){
      rectMode(CENTER);
      fill(0, 0, 255);
      rect(posizione.x,posizione.y,dimensione,dimensione);
      fill(255);
      rect(posizione.x,posizione.y,dimensione/2,dimensione/2);
      fill(0);
      textSize(12);
      textAlign(CENTER, CENTER);
      text(this.vita, posizione.x, posizione.y);
      rectMode(CORNER);
    }
}
