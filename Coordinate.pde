public class Coordinate{
    private int x1;
    private int x2; 
    private int y1; 
    private int y2;
    private int grandezzaCella;
    public Coordinate (int x, int y, int grandezzaCella) {
        this.x1=x;
        this.y1=y;
        this.grandezzaCella=grandezzaCella;
        x2=x1+grandezzaCella;
        y2=y1+grandezzaCella;
    }
    
}
