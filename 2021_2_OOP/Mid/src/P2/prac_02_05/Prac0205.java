package P2.prac_02_05;

public class Prac0205 {
   private static Hello h1 = new Hello();
   private static Hello h2 = new Hello("홍길동");
   private static Hello h3 = new Hello("허균");
   private static Hello[] harr = {h1, h2, h3};

   public static void main(String[] args){
      for(Hello h : harr)
         h.sayHello();
   }

}
