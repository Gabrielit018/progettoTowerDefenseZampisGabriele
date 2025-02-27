public class Nemici{
    private ArrayList<Nemico> nemici;
    private ArrayList<PVector> percorso;
    private int tempoSpawnCorrente;
    private int intervalloSpawn;
    public Nemici(ArrayList<PVector> percorso) {
        this.nemici = new ArrayList<Nemico>();
        this.percorso = percorso;
        this.tempoSpawnCorrente=0;
        this.intervalloSpawn = 30; 
    }
    private boolean timer(){
        tempoSpawnCorrente++;
        if(tempoSpawnCorrente>intervalloSpawn){
            return true;
            tempoSpawnCorrente=0;
        }else{
            return false;
        }
        
    }
    private void display() {
        for (int i = 0; i < nemici.size(); i++) {
            Nemico n = nemici.get(i);
            if (n.eMorto()) {
                nemici.remove(i);
                tt.aumentaMonete();
            } else {
                n.aggiornamento();
            }
        }
    }
    private void spawnaNemici(){
        if(timer){
            spawnNemicoCasuale();
        }
    }
    private void spawnNemicoCasuale() {
        int tipo = (int) random(3); 
        Nemico nuovoNemico;

        switch (tipo) {
            case 0:
                nuovoNemico = new NemicoNormale(percorso);
                break;
            case 1:
                nuovoNemico = new NemicoTank(percorso);
                break;
            case 2:
                nuovoNemico = new NemicoVeloce(percorso);
                break;
            default:
                nuovoNemico = new NemicoNormale(percorso);
                break;
        }
        

        nemici.add(nuovoNemico);
    }
    public void gestioneNemici(){
        display();
        spawnaNemici();
    }
    public ArrayList<Nemico> getNemici() {
        return nemici;
    }

}
