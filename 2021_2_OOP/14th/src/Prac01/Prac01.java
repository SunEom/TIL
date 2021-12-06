package Prac01;

import java.io.FileInputStream;
import java.util.Scanner;

public class Prac01 {
    public static void main(String[] args){
        try {
            FileInputStream fs = new FileInputStream("/users/eomtaeyang/documents/circle.txt");
            Scanner sc = new Scanner(fs);
            double radius = sc.nextDouble();

            System.out.printf("Area: %.2f\n",Math.PI * radius * radius);
        } catch(Exception e){
            e.printStackTrace();
        }
    }
}
