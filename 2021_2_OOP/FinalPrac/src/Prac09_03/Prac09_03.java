package Prac09_03;

import java.util.ArrayList;

public class Prac09_03 {
   private static ArrayList<Integer> arr = new ArrayList<>();

   public static void main(String[] args){
      int sum =0;

      for(int i=1; i<=100; i++)
         if(i%4 == 0 && i%5 !=0)
            arr.add(i);

      for(int i=0; i<arr.size(); i++)
         sum += arr.get(i);

      System.out.printf("Sum: %d\n",sum);
   }
}
