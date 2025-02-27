Nemico n;
Nemico n1;
Nemico n3;
Griglia g;
Torre t;
Torri tt;
ArrayList<Nemico> nemici;
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
    t=new TorreRapida(300,400);
    
    nemici = new ArrayList<Nemico>();
    nemici.add(n);
    nemici.add(n1);
    nemici.add(n3);
    tt=new Torri(g,nemici);
  
}
public void draw(){
  //background(152,190,100);
  g.displayGriglia();
  for (int i = 0; i < nemici.size(); i++) {
      Nemico n = nemici.get(i);
      if (n.eMorto()) {
          nemici.remove(i);
          tt.aumentaMonete();
      } else {
          n.aggiornamento();
      }
  }
  
  tt.aggiornaTorri();
  //t.display();
  //t.spara(nemici);
  
}
