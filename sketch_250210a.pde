
GameManager gioco;
int dimensione=800;
public void setup(){
    size(800,800);
    gioco= new GameManager();
}
public void draw(){
   gioco.gioco();
}
