Aereo a1;
Griglia g;
 int dimensione=800;
public void setup(){
  size(800,800);
  a1=new Aereo(1,width/2,height/2,width/20,6);
  g = new Griglia(800);
}
public void draw(){
  //background(152,190,100);
  g.displayGriglia();
  a1.display();
  a1.cambiaColore();
  a1.move();
  
  
}
