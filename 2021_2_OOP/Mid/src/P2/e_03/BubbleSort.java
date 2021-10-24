package P2.e_03;

public class BubbleSort {
   public static void sort(int[] arr){
      for(int i=0 ;i<arr.length; i++ ){
         for(int j=0; j<arr.length-1-i ; j++){
            if(arr[j] > arr[j+1]){
               int temp = arr[j];
               arr[j] = arr[j+1];
               arr[j+1] = temp;
            }
         }
      }

      printResult(arr);
   }

   private static void printResult(int[] arr){
      for(int i=0 ; i<arr.length ; i++)
         System.out.printf("%d ",arr[i]);
      System.out.println();
   }
}
