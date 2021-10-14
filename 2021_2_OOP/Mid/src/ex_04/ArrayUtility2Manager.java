package ex_04;

public class ArrayUtility2Manager {
   public static void main(String[] args){
      int[] arr1 = {1,34,56,34,2,342,234,35};
      int[] arr2 = {234,5,345,34,62,345,345,};

      int[] result1 = ArrayUility2.concat(arr1, arr2);
      int[] result2 = ArrayUility2.remove(arr1, arr2);

      for(int i=0; i<result1.length; i++)
         System.out.printf("%d ",result1[i]);

      System.out.println("");

      for(int i=0; i<result2.length; i++)
         System.out.printf("%d ",result2[i]);
   }
}
