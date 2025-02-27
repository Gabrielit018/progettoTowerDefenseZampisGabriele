public class Nemici{
  private ArrayList<Nemico> nemici;
    private ArrayList<PVector> percorso;
    private int tempoSpawnCorrente;
    private int intervalloSpawn;
    public Nemici(ArrayList<PVector> percorso) {
        this.nemici = new ArrayList<Nemico>();
        this.percorso = percorso;
        tempoSpawnCorrente=0;
        this.intervalloSpawn = 30; 
    }
    public void display() {
        for (Nemico nemico : nemici) {
            nemico.display();
        }
    }

}
