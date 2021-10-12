package ex_03;

import java.util.Scanner;

public class BubbleSort {
   public static void main(String[] args){
      Scanner sc = new Scanner(System.in);
      int[] arr = new int[10];

      for(int i=0; i <10; i++)
         arr[i] = sc.nextInt();

      for(int i=0; i<9 ;i++){
         for(int j=0; j<9-i; j++){
            if(arr[j] > arr[j+1]){
               int temp = arr[j];
               arr[j] = arr[j+1];
               arr[j+1] = temp;
            }
         }
      }

      for(int i=0 ;i<10; i++)
         System.out.println(arr[i]+ " ");
   }
}
