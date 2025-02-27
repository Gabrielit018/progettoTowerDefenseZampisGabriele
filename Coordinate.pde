public class Coordinate{
    protected  int x1;
    protected int x2; 
    protected int y1; 
    protected int y2;
    protected int grandezzaCella;
    public Coordinate (int x, int y, int grandezzaCella) {
        this.x1=x;
        this.y1=y;
        this.grandezzaCella=grandezzaCella;
        x2=x1+grandezzaCella;
        y2=y1+grandezzaCella;
    }
    
}
