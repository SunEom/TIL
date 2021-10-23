package P2.prac_02_05;

public class Hello {
   private String toWhom = "world";

   Hello(){}

   Hello(String w){
      setToWhom(w);
   }

   void setToWhom(String w){
      toWhom = w;
   }

   public void sayHello(){
      System.out.println("hello " + toWhom);
   }
}
