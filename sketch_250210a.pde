Nemico n;
Nemico n1;
Nemico n3;
Griglia g;
ArrayList<PVector> percorso;
 int dimensione=800;
public void setup(){
  size(800,800);
  g = new Griglia(800);
  percorso = new ArrayList<PVector>();
  percorso.add(new PVector(50, 50));
  percorso.add(new PVector(400, 50));
  percorso.add(new PVector(400, 300));
  percorso.add(new PVector(750, 300));
  n=new NemicoTank(6,percorso);
  n1=new NemicoNormale(6,percorso);
  n3=new NemicoVeloce(6,percorso);
  
}
public void draw(){
  //background(152,190,100);
  g.displayGriglia();
  n.aggiornamento();
  n1.aggiornamento();
  n3.aggiornamento();
  
}
