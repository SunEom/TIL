public class Exercise02 {
   public static void main(String[] args){
      String[] a = {"Google Chrome", "Microsoft Edge", "Mozila Firefox", "Naver Whale"};
      String[] b = new String[4];
      b[0] = "Google Chrome";
      b[1] = "Microsoft Edge";
      b[2] = "Mozila Firefox";
      b[3] = "Naver Whale";

      System.out.println(a[0]+","+a[0].length());
      System.out.println(a[1]+","+a[1].length());
      System.out.println(a[2]+","+a[2].length());
      System.out.println(a[3]+","+a[3].length());

      System.out.println();

      System.out.println(b[0]+","+b[0].length());
      System.out.println(b[1]+","+b[1].length());
      System.out.println(b[2]+","+b[2].length());
      System.out.println(b[3]+","+b[3].length());
   }
}
