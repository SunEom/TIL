package Prac06;

public class prac_06 {
    public static void main(String[] args){
        AbstractShape[] arr = new AbstractShape[2];

        arr[0] = new ARectangle(3,4);
        arr[1] = new ACircle(3,4,5);

        for(AbstractShape as : arr){
            if(as instanceof ARectangle)
                System.out.printf("getArea(): %f\n",((ARectangle)as).getArea());
            else if(as instanceof ACircle)
                System.out.printf("getArea(): %f\n",((ACircle)as).getArea());
        }
        
        
        for(AbstractShape as : arr){
            System.out.printf("getArea(): %f\n",as.getArea());
        }
    }
}
