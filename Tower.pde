public abstract class Tower{
    protected PVector posizione;
    int costo;
    int tempoRicarica;
    int tempoCorrente;
    public Tower (int x, int y) {
        this.posizione=new PVector(x,y);
        setRicarica();
    }
    public abstract void display();
    public abstract void spara(ArrayList<Nemico> nemici);
    private void setRicarica(){
        if(this instanceof TorreArea){
            tempoRicarica=60;
        }else if(this instanceof TorreRapida){
            tempoRicarica=30;
        }
    }
    public boolean timer(){
        tempoCorrente++;
        if(tempoCorrente>=tempoRicarica){
            tempoCorrente=0;
            return true;
        }else{
            return false;
        }
    }
    protected void colpisci(float x1, float y1, float x2, float y2,Nemico nemicoTemp,int danno){
        line(x1,y1,x2,y2);
        nemicoTemp.diminuisciVita(danno);
    }
}
