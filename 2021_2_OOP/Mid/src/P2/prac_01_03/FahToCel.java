package P2.prac_01_03;

public class FahToCel {
   private static double fah = 23;
   private static double cel;
   public static void main(String[] args){
      cel = ((double)5/9) * (fah - 32);
      cel = ((int)(cel*100))/100.0;
      System.out.println(cel);
   }
}
