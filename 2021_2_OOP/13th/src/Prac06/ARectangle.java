package Prac06;

public class ARectangle extends AbstractShape{
    private double width, height;

    ARectangle(double w, double h){
        this.width = w;
        this.height = h;
    }

    public void setWidth(double w){
        this.width = w;
    }

    public void setHeight(double h){
        this.height = h;
    }

    public double getWidth(){
        return this.width;
    }

    public double getHeight(){
        return this.height;
    }
    @Override
    public double getArea() {
        return getWidth() * getHeight();
    }
}
