public class TorreRapida extends Torre{
    private static final int danno = 1;
    private static final int dimensione=40;
    private static final int raggio=200;
    private static final int bersagli=3;
    public TorreRapida (int x,int y) {
        super(x,y);
    }
    public void spara(ArrayList <Nemico> nemici){
        attacco(nemici,raggio,danno,bersagli);
    }
    public void display(){
      fill(0,143,57);
      rectMode(CENTER);
      rect(this.posizione.x, this.posizione.y, dimensione,dimensione);
      rectMode(CORNER);
    }

}
