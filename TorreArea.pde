public class TorreArea extends Torre{
    private static final int danno = 3;
    private static final int dimensione=40;
    private static final int raggio=200;
    private static final int bersagli=6;
    public TorreArea (int x,int y) {
        super(x,y);
    }
    public void spara(ArrayList <Nemico> nemici){ 
        attacco(nemici,raggio,danno,bersagli);
    }
    public void display(){
        fill(0,143,57);
        circle(this.posizione.x, this.posizione.y, dimensione);
    }

}
