package Prac09_02;

public class Prac09_02 {
   public static void main(String[] args){
      String str = "hello";
      StringBuilder sb1 = new StringBuilder();
      StringBuilder sb2 = new StringBuilder();

      for(int i = str.length()-1; i>=0 ;i--)
         sb1.append(str.charAt(i));

      System.out.println(sb1);

      char[] temp = str.toCharArray();

      for(int i= temp.length-1; i>=0; i--)
         sb2.append(temp[i]);

      System.out.println(sb2);
   }
}
