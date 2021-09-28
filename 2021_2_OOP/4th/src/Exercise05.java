class Hello{
   String toWhom ="world";

   Hello(){}

   Hello(String whom){
      setToWhom(whom);
   }

   void setToWhom(String whom){
      toWhom = whom;
   }

   void sayHello(){
      System.out.println("Hello, "+toWhom);
   }
}

public class Exercise05 {
   public static void main(String[] args){
      Hello h1 = new Hello();
      Hello h2 = new Hello("홍길동");
      Hello h3 = new Hello("허균");

      Hello[] hArr = {h1,h2,h3};
      hArr[0].sayHello();
      hArr[1].sayHello();
      hArr[2].sayHello();
   }
}
