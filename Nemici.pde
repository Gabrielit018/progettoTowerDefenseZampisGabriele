public class Nemici{
    private ArrayList<Nemico> nemici;
    private ArrayList<PVector> percorso;
    private int tempoSpawnCorrente;
    private int intervalloSpawn;
    public Nemici(ArrayList<PVector> percorso) {
        this.nemici = new ArrayList<Nemico>();
        this.percorso = percorso;
        this.tempoSpawnCorrente=0;
        this.intervalloSpawn = 60; 
    }
    private boolean timer(){
        tempoSpawnCorrente++;
        if(tempoSpawnCorrente>intervalloSpawn){
            tempoSpawnCorrente=0;
            return true;
            
        }else{
            return false;
        }
        
    }
    private void display(Torri t) {
        for (int i = 0; i < nemici.size(); i++) {
            Nemico n = nemici.get(i);
            if (n.eMorto()) {
                nemici.remove(i);
                t.aumentaMonete();
            } else {
                n.aggiornamento();
            }
        }
    }
    private void spawnaNemici(){
        if(timer()){
            spawnNemicoCasuale();
        }
    }
    private void spawnNemicoCasuale() {
        int tipo = (int) random(3); 
        Nemico nuovoNemico;

        switch (tipo) {
            case 0:
                nuovoNemico = new NemicoNormale(8,percorso);
                break;
            case 1:
                nuovoNemico = new NemicoTank(10,percorso);
                break;
            case 2:
                nuovoNemico = new NemicoVeloce(6,percorso);
                break;
            default:
                nuovoNemico = new NemicoNormale(8,percorso);
                break;
        }
        

        nemici.add(nuovoNemico);
    }
    public void gestioneNemici(Torri t){
        display(t);
        spawnaNemici();
    }
    public ArrayList<Nemico> getNemici() {
        return nemici;
    }

}
