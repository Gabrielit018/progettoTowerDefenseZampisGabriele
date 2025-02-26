public abstract class Tower{
    protected PVector posizione;
    int raggio;
    int costo;
    int tempoRicarica;
    public Tower (int x, int y) {
        this.posizione=new PVector(x,y);
    }
    public abstract void display();
    public abstract void spara(ArrayList<Nemico> nemici){
                
    }
    private void setRicarica(){
        if(this istanceof TorreArea){
            tempoRicarica=60;
        }else if(this istanceof TorreRapida){
            tempoRicarica=30;
        }
    }
    public booolean timer(){
        if(this istanceof TorrePotenziata){

        }
    }
