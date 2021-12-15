package Prac10_05;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;

public class Prac10_05 {
   public static void main(String[] args){
      try {
         FileWriter fw = new FileWriter("travel.txt");
         BufferedWriter bw = new BufferedWriter(fw);
         bw.write("I love travel.\r\n");
         bw.write("The cities I have visited:\r\n");
         bw.write("\t- Seoul\r\n");
         bw.write("\t- New York\r\n");
         bw.write("\t- Sydney");

         bw.close();

         FileReader fr = new FileReader("travel.txt");
         BufferedReader br = new BufferedReader(fr);
         String line;
         while((line = br.readLine())!= null){
            System.out.println(line);
         }

         br.close();
      } catch(Exception e){
         e.printStackTrace();
      }
   }
}
