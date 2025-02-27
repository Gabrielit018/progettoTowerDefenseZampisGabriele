public class TorreRapida extends Torre{
    private static final int danno = 1;
    private static final int dimensione=40;
    private static final int raggio=200;
    public TorreRapida (int x,int y) {
        super(x,y);
    }
    public void spara(ArrayList <Nemico> nemici){
        attacco(nemici,raggio,danno);
    }
    public void display(){
      
    }

}
