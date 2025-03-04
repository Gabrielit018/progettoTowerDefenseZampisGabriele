public class Nemici{
    private ArrayList<Nemico> nemici;
    private ArrayList<PVector> percorso;
    private int tempoSpawnCorrente;
    private int tempoMoltiplicazioneVitaCorrente;
    private int tempoMoltiplicazioneVita;
    private int intervalloSpawn;
    private int moltiplicatoreVita;
    GestioneVita vitaCorrente;
    public Nemici(ArrayList<PVector> percorso,GestioneVita vitaCorrente) {
        this.nemici = new ArrayList<Nemico>();
        this.percorso = percorso;
        this.tempoSpawnCorrente=0;
        this.intervalloSpawn = 60; 
        this.vitaCorrente=vitaCorrente;
        this.moltiplicatoreVita=1;
        this.tempoMoltiplicazioneVitaCorrente=0;
        this.tempoMoltiplicazioneVita=600;
    }
    private boolean timer(){
        tempoSpawnCorrente++;
        if(tempoSpawnCorrente>intervalloSpawn){
            tempoSpawnCorrente=0;
            if(intervalloSpawn>20){
                intervalloSpawn--;
            }
            return true;
        }else{
            return false;
        }

    }
    private void moltiplicazioneVita(){
        tempoMoltiplicazioneVitaCorrente++;
        if(tempoMoltiplicazioneVitaCorrente>=tempoMoltiplicazioneVita){
            tempoMoltiplicazioneVitaCorrente=0;
            moltiplicatoreVita++;
        }
    }
    private void display(Torri t) {
        
      if(vitaCorrente.getVita()>0){
        for (int i = 0; i < nemici.size(); i++) {
            Nemico n = nemici.get(i);
            if (n.eMorto()) {
                nemici.remove(i);
                t.aumentaMonete();
            } else {
                if(!n.eArrivato()){
                    n.aggiornamento();
                }else{
                    nemici.remove(i);
                    vitaCorrente.diminuisciVita();
                }
            }
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
                nuovoNemico = new NemicoNormale(8*moltiplicatoreVita,percorso);
                break;
            case 1:
                nuovoNemico = new NemicoTank(10*moltiplicatoreVita,percorso);
                break;
            case 2:
                nuovoNemico = new NemicoVeloce(6*moltiplicatoreVita,percorso);
                break;
            default:
                nuovoNemico = new NemicoNormale(8*moltiplicatoreVita,percorso);
                break;
        }
        

        nemici.add(nuovoNemico);
    }
    public void gestioneNemici(Torri torri){
       moltiplicazioneVita();
        display(torri);
        spawnaNemici();
    }
    public ArrayList<Nemico> getNemici() {
        return nemici;
    }

}
