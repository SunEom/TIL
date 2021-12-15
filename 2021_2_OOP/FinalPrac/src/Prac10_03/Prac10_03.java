package Prac10_03;

import java.io.BufferedReader;
import java.io.FileReader;

public class Prac10_03 {
   public static void main(String[] args){
      try{
         FileReader fr = new FileReader("str2.txt");
         BufferedReader br = new BufferedReader(fr);
         int ch = br.read();
         while(ch != -1){
            System.out.printf("%c", Character.toLowerCase(ch));
            ch = br.read();
         }
         fr.close();
      } catch(Exception e){
         e.printStackTrace();
      }
   }
}
