package Prac10_001;

import java.io.FileInputStream;
import java.util.Scanner;

public class Prac10_01 {
   public static void main(String[] args){
      try{
         Scanner sc = new Scanner(new FileInputStream("circle.txt"));
         double radius = sc.nextDouble();
         System.out.printf("Area: %f\n",Math.PI * radius * radius);

      } catch(Exception e){
         e.printStackTrace();
      }

   }
}
