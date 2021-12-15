package Prac10_04;

import java.io.FileInputStream;
import java.io.FileOutputStream;

public class Prac10_04 {
   public static void main(String[] args){
      try{
         FileOutputStream fos = new FileOutputStream("str4.txt");
         FileInputStream fis = new FileInputStream("str2.txt");
         Util.copyFile(fos, fis);
      } catch(Exception e){
         e.printStackTrace();
      }
   }
}
