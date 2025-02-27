Nemici nemici;
Griglia griglia;
Torri torri;
ArrayList<PVector> percorso;
int dimensione=800;
public void setup(){
    size(800,800);
    griglia = new Griglia(800);
    percorso = new ArrayList<PVector>();
    percorso.add(new PVector(50, 50));
    percorso.add(new PVector(400, 50));
    percorso.add(new PVector(400, 300));
    percorso.add(new PVector(750, 300));
    nemici=new Nemici(percorso);
    torri=new Torri(griglia,nemici);
  
}
public void draw(){
  //background(152,190,100);
    griglia.displayGriglia();
    nemici.gestioneNemici(torri);
    torri.aggiornaTorri();
  //t.display();
  //t.spara(nemici);
  
}
