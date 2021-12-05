package P5;

public class Main {
    public static void main(String[] args){
        ACircle ac = new ACircle(1,2,3);
        ARectangle ar = new ARectangle(3,4);

        System.out.printf("ACircle Perimeter: %.2f\n",ac.getPerimeter());
        System.out.printf("ACircle Area: %.2f\n",ac.getArea());

        System.out.printf("ARectangle Perimeter : %.2f\n",ar.getPerimeter());
        System.out.printf("ARectangle Area: %.2f\n",ar.getArea());

    }
}
