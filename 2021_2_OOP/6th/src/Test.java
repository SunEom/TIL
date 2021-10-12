public class Test {
   public static void main(String[] args){
      int a = 1;
      System.out.println(System.identityHashCode(a));

      printHashCode(a);

      System.out.println(System.identityHashCode(a));
    }

   static void printHashCode(int num){
      System.out.println(System.identityHashCode(num));
      num = 2;
      System.out.println(System.identityHashCode(num));
   }
}
