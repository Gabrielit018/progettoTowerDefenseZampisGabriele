public class NemicoTank extends Nemico{
    int dimensione;
    public NemicoTank (int velocita, int vita,int dimensione) {
        super(velocita,vita);
    }
    public void display(){
        circle(posizione.x,posizione.y,dimensione);
    }
    
    public void aggiornamento(){
        display();
        super.muovi();
    }

}
