package ExerciseProblem;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.util.Scanner;

public class Append {
   public static void main(String[] args){
      try{
         Scanner sc = new Scanner(System.in);
         System.out.printf("Enter a file name 1: ");
         String fileName1 = sc.next();

         System.out.printf("Enter a file name 2: ");
         String fileName2 = sc.next();

         FileReader fr1 = new FileReader(fileName1);
         FileReader fr2 = new FileReader(fileName2);

         BufferedReader br1 = new BufferedReader(fr1);
         BufferedReader br2 = new BufferedReader(fr2);

         FileWriter fw = new FileWriter("result.txt");
         BufferedWriter bw = new BufferedWriter(fw);

         int data;
         while((data = br1.read())!= -1){
            bw.write((char)data);
         }

         while((data = br2.read())!= -1){
            bw.write((char)data);
         }

         br1.close();
         br2.close();
         bw.close();
      } catch(Exception e){
         e.printStackTrace();
      }
   }
}
