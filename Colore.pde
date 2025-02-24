public class Colore {
    private int r;
    private int g;
    private int b;
    int velocitaCambio;
    private boolean limiteRaggiunto;
    public Colore () {
        limiteRaggiunto=false;
        r=(int)random(20, 256);;
        g=(int)random(20, 256);;
        b=(int)random(20, 256);;
    }
    public void cambiaColore(){
        if(r>=200){
            limiteRaggiunto=true;
        }
        if(g<=50){
            limiteRaggiunto=false;
        }
        if(!limiteRaggiunto){
            r++;
            g+=2;
            b+=3;
        }else{
            r-=3;
            g-=2;
            b--;
        }
    }
    public int getR(){
        return this.r;
    }
    public int getG(){
        return this.g;
    }
    public int getB(){
        return this.b;
    }
    

}
