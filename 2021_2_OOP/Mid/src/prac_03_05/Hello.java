package prac_03_05;

public class Hello {
   String toWhom = "world";
   Hello(){}
   Hello(String toWhom){ setToWhom(toWhom);}
   void setToWhom(String whom){
      toWhom = whom;
   }
   void sayHello(){
      System.out.println("hello " + toWhom);
   }
}
