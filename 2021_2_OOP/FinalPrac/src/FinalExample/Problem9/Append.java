package FinalExample.Problem9;

import java.io.FileInputStream;
import java.io.FileReader;

public class Append {
   public static void main(String[] args){
      String file1 = "str1.txt";
      String file2 = "str2.txt";
      String result = "";

      try{
         FileReader fr = new FileReader(file1);
         FileReader fr2 = new FileReader(file2);
         int char1 = fr.read();
         int char2 = fr2.read();

         while(char1 != -1 && char2 != -1){
            result += (char)char1;
            result += (char)char2;

            char1 = fr.read();
            char2 = fr2.read();
         }

         while(char1 != -1){
            result += (char)char1;
            char1 = fr.read();
         }

         while(char2 != -1){
            result += (char)char2;
            char2 = fr2.read();
         }

         fr.close();
         fr2.close();

         System.out.println(result);
      } catch(Exception e){
         e.printStackTrace();
      }
   }
}
