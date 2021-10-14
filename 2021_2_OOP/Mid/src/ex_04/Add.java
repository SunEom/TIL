package ex_04;

public class Add {
   int a, b;

   Add(int a, int b){
      setValue(a,b);
   }

   void setValue(int a, int b){
      this.a = a;
      this.b= b;
   }

   int calculate(){
      return a+b;
   }
}
