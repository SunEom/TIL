package P2.prac_01_07;

public class Prac0107 {
   private static double[] arr = new double[4];

   public static void main(String[] args){
      arr[0] = 1.1;
      arr[1] = 2.2;
      arr[2] = 3.3;
      arr[3] = 4.4;

      for(int i=0; i<arr.length; i++)
         System.out.println(arr[i]);
   }
}
