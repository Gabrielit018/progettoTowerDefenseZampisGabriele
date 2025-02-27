public class Cella {
    private boolean faParteDelPercorso;
    private boolean torreAssegnata;
    Coordinate coordinateCella;
    private int grandezzaCella;
    private Colore c1;

    public Cella(int x, int y, int grandezzaCella) {
        this.torreAssegnata = false;
        this.faParteDelPercorso = false;
        coordinateCella = new Coordinate(x, y, grandezzaCella);
        this.grandezzaCella = grandezzaCella;
        c1 = new Colore();
    }

    private void coloreCella() {
        if (faParteDelPercorso) {
            c1.r = 0;
            c1.g = 127;
            c1.b = 255;
        } else if (!faParteDelPercorso && !torreAssegnata) {
            c1.r = 182;
            c1.g = 202;
            c1.b = 112;
        } else {
            c1.r = 0;
            c1.g = 100;
            c1.b = 67;
        }
    }

    public void display() {
        coloreCella();
        fill(c1.r, c1.g, c1.b);
        rect(coordinateCella.x1, coordinateCella.y1, grandezzaCella, grandezzaCella);
    }

    public boolean getTorreAssegnata() {
        return torreAssegnata;
    }

    public boolean getFaParteDelPercorso() {
        return faParteDelPercorso;
    }

    public void setTorreAssegnata(boolean b) {
        torreAssegnata = b;
    }

    public void setFaParteDelPercorso(boolean b) {
        faParteDelPercorso = b;
    }

    public Coordinate ritornaCoordinate() {
        return coordinateCella;
    }
}
