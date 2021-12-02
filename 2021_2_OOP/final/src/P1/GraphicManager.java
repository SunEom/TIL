package P1;

import java.util.Scanner;

public class GraphicManager {
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        GraphicArray ga = new GraphicArray();

        int option = 0;

        while(true){
            System.out.printf("Add (1), Delete (2), Show ALL (3), End (4)>> ");
            option = sc.nextInt();

            if(option == 1){
                System.out.printf("도형종류 Line(1), Rect(2), Circle(3)>> ");
                option = sc.nextInt();
                if(option == 1)
                    ga.add(new Line());
                else if(option == 2)
                    ga.add(new Rect());
                else if(option == 3)
                    ga.add(new Circle());
            } else if(option == 2){
                ga.delete();
            } else if (option == 3){
                ga.showAll();
            } else if (option ==4){
                break;
            }
        }
    }
}
