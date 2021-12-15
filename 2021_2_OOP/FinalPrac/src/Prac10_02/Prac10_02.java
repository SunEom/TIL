package Prac10_02;

import java.io.File;
import java.util.Scanner;

public class Prac10_02 {
   public static void main(String[] args){
      try {
         Scanner sc = new Scanner(new File("str1.txt"));
         while(sc.hasNext()){
            System.out.println(sc.next());
         }
         sc.close();
      } catch(Exception e){
         e.printStackTrace();
      }
   }
}
