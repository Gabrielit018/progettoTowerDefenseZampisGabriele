public class Torri {
    private Griglia griglia;
    private ArrayList<Torre> torri;
    public int monete;
    private int x;
    private int y;
    private Nemici nemici;
    private static final int costoTorreArea = 50;
    private static final int costoTorreRapida=70;
    private int centroX;
    private int centroY;

    public Torri(Griglia griglia,Nemici nemici) {
        this.griglia = griglia;
        torri = new ArrayList<Torre>();
        this.nemici=nemici;
        monete = 70;
    }

    private void piazzaTorre() {
        x = mouseX;
        y = mouseY;
        int cellaX = x / griglia.grandezzaCella;
        int cellaY = y / griglia.grandezzaCella;

        if (cellaX >= 0 && cellaX < Griglia.lato && cellaY >= 0 && cellaY < Griglia.lato) {
            Cella cella = griglia.griglia[cellaY][cellaX];
            if (!cella.getTorreAssegnata() && !cella.getFaParteDelPercorso()) {
                if (key == '1' && monete >= costoTorreArea) {
                    
                    centroX = cella.ritornaCoordinate().x1 + griglia.grandezzaCella / 2;
                    centroY = cella.ritornaCoordinate().y1 + griglia.grandezzaCella / 2;
                    torri.add(new TorreArea(centroX, centroY));
                    monete = monete - costoTorreArea;
                    cella.setTorreAssegnata(true);
                } else if (key == '2' && monete >= costoTorreRapida) {
                    centroX = cella.ritornaCoordinate().x1 + griglia.grandezzaCella / 2;
                    centroY = cella.ritornaCoordinate().y1 + griglia.grandezzaCella / 2;
                    torri.add(new TorreRapida(centroX, centroY));
                    monete = monete - costoTorreRapida;
                    cella.setTorreAssegnata(true);
                }
            }
        }
    }
    private void displayTorri(){
        for(Torre torreTemp : torri){
            torreTemp.display();
            torreTemp.spara(nemici.getNemici());
        }
    }
    private void displayMonete(){
        textSize(30);
        text("coin: " + this.monete, 60, 20);
    }
    public void aumentaMonete(){
        this.monete=this.monete+20;
    }
    public void aggiornaTorri(){
        piazzaTorre();
        displayTorri();
        displayMonete();
    }
}
