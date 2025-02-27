public class GameManager{
    Nemici nemici;
    Griglia griglia;
    Torri torri;
    ArrayList<PVector> percorso;
    int vitaTorre;
    public GameManager () {
        percorso = new ArrayList<PVector>();
        percorso.add(new PVector(50, 50));
        percorso.add(new PVector(400, 50));
        percorso.add(new PVector(400, 300));
        percorso.add(new PVector(750, 300));
    }

}
