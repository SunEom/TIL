public class Test2 {
   public static  void main(String[] args){
      Test2 t = new Test2();
      t.printNum(2.0f, 2.9f);
   }

   void printNum(int a, int b){
      System.out.println(a+b);
   }

   void printNum(double a, double b){
      System.out.println(a+b);
   }
}
