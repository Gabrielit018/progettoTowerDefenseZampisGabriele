public class TorreArea extends Tower{
    private static final int danno = 2;
    private static final int dimensione=30;
    private static final int raggio=200;
    public TorreArea (int x,int y) {
        super(x,y);
    }
    public void spara(ArrayList <Nemico> nemici){ 
        if(timer()){
            for(Nemico nemicoTemp : nemici){ 
                float distanza=PVector.dist(this.posizione,nemicoTemp.posizione);
                if(distanza<=raggio){
                    colpisci(this.posizione.x, this.posizione.y, nemicoTemp.posizione.x, nemicoTemp.posizione.y,nemicoTemp,danno);
                }
            }
        }
    }
    public void display(){
        fill(21,67,187);
        circle(this.posizione.x, this.posizione.y, dimensione);
    }

}
