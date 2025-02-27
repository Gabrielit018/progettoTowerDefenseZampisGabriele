public class Griglia{
    int grandezzaCella;
    protected Cella [][] griglia;
    private static final int lato=10;
    //costeruttore
    public Griglia(int dimensione){
        griglia=new Cella[lato][lato];
        grandezzaCella=dimensione/lato;
        inizializzaGriglia();
    }
    private void inizializzaGriglia() {
      for (int i = 0; i < lato; i++) {
          for (int j = 0; j < lato; j++) {
              int x = j * grandezzaCella;
              int y = i * grandezzaCella;
              griglia[i][j] = new Cella(x, y, grandezzaCella);
              if(i==0 && j>=0 && j<=lato/2){
                griglia[i][j].setFaParteDelPercorso(true);
              }
              if(i>0 && i<=lato/2 && j==lato/2){
                griglia[i][j].setFaParteDelPercorso(true);
              }
              if(i==lato/2 && j>=lato/2 && j<=lato){
                griglia[i][j].setFaParteDelPercorso(true);
              }
          }
      }
  }
    public void displayGriglia() {
        for (int i = 0; i < lato; i++) {
            for (int j = 0; j < lato; j++) {
                griglia[i][j].display();
            }
        }
    }
    

}
