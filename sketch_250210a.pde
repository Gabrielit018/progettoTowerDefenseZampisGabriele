Nemici n;
Griglia g;
Torri tt;
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
    n=new Nemici(percorso);
    tt=new Torri(g,n);
  
}
public void draw(){
  //background(152,190,100);
    g.displayGriglia();
    n.gestioneNemici(tt);
    tt.aggiornaTorri();
  //t.display();
  //t.spara(nemici);
  
}
