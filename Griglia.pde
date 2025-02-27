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
