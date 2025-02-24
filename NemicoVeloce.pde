public class nemicoVeloce extends Nemico{

    int dimensione;
    public NemicoVeloce(int velocita, int vita,int dimensione, ArrayList<PVector> percorso) {
        super(velocita,vita,percorso);
        this.dimensione=dimensione;
    } 
    public void display(){
        circle(posizione.x,posizione.y,dimensione);
        text(this.vita,posizione.x,posizione.y);
    }

}
