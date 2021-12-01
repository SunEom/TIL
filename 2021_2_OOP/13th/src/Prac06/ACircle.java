package Prac06;

public class ACircle extends AbstractShape{
    private int x, y;
    private double r;

    ACircle(int x, int y, double r){
        this.x = x;
        this.y = y;
        this.r = r;
    }

    public void setX(int x){
        this.x = x;
    }

    public void setY(int y){
        this.y = y;
    }

    public void setR(int r){
        this.r =r;
    }

    public int getX(){
        return this.x;
    }

    public int getY(){
        return  this.y;
    }

    public double getR(){
        return this.r;
    }
    @Override
    public double getArea() {
        return Math.PI * r * r;
    }
}
