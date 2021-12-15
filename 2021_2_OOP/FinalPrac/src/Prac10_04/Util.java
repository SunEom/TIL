package Prac10_04;

import java.io.InputStream;
import java.io.OutputStream;

public class Util {
   public static void copyFile(OutputStream os, InputStream is){
      try{
         int data;
         while((data = is.read()) != -1){
            os.write((char)data);
         }
         os.write('\n');
         is.close();
         os.close();
      } catch(Exception e){
         e.printStackTrace();
      }
   }
}
