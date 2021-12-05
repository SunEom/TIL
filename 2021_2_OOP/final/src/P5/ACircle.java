package P5;

public class ACircle extends AbstractShape{
    private int x, y;
    private int radius;

    public ACircle(int x, int y, int radius){
        this.x = x;
        this.y = y;
        this.radius = radius;
    }

    @Override
    public double getArea() {
        return Math.PI * radius * radius;
    }

    @Override
    public double getPerimeter() {
        return Math.PI * 2 * radius;
    }
}
