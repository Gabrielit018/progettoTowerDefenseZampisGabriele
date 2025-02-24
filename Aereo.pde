public class Aereo {
    int moltiplicatoreGrandezza;
    int velocita;
    int x;
    int y;
    int raggio;
    int vita;
    Colore c1;
    public Aereo (int velocita, int x, int y, int raggio, int vita) {
        this.x=x;
        this.y=y;
        this.velocita=velocita;
        this.raggio=raggio;
        this.vita=vita;
        c1=new Colore();
    }
    public void display(){
        cambiaColore();
        move();
        displayNemico();
    }
    public void cambiaColore(){
        c1.cambiaColore();
    }
    public void move(){
        this.x+=velocita;
        
    }
    public void displayNemico(){
        fill(c1.getR(),c1.getG(),c1.getB());
        circle(x, y, raggio);
        fill(0,0,0);
        stroke(100);
        text(vita,x,y);
        
    }
    
}
