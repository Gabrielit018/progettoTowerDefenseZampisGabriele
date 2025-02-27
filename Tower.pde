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
            tempoRicarica=90;
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
    private void colpisci(float x1, float y1, float x2, float y2,Nemico nemicoTemp,int danno){
      line(x1,y1,x2,y2);
      nemicoTemp.diminuisciVita(danno);
        
    }
    protected void attacco(ArrayList <Nemico> nemici,raggio){
        if(timer()){
            for(Nemico nemicoTemp : nemici){ 
                float distanza=PVector.dist(this.posizione,nemicoTemp.posizione);
                if(distanza<=raggio){
                    colpisci(this.posizione.x, this.posizione.y, nemicoTemp.posizione.x, nemicoTemp.posizione.y,nemicoTemp,danno);
                }
            }
        }
    }
}
