
GameManager gioco;
int dimensione=800;
public void setup(){
    size(800,800);
    
    gioco= new GameManager();
  
}
public void draw(){
  //background(152,190,100);
   gioco.gioco();
  //t.display();
  //t.spara(nemici);
  
}
