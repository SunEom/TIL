package P5;

public class ARectangle extends AbstractShape{
    private int width, height;

    public ARectangle(int w, int h){
        this.width = w;
        this.height = h;
    }

    @Override
    public double getArea() {
        return width * height;
    }

    @Override
    public double getPerimeter() {
        return 2*(width + height);
    }
}
