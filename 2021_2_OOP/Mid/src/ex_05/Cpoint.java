package ex_05;

public class Cpoint {
   int a;
   int b;
   Cpoint(int a, int b){
      this.a = a;
      this.b = b;
   }

   void show(){
      System.out.printf("(%d,%d)\n",a,b);
   }

   void show(String color){
      System.out.printf("(%d,%d) %s\n",a,b,color);
   }
}
