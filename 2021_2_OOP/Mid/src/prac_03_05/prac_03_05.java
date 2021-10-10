package prac_03_05;

public class prac_03_05 {
   public static void main(String[] args){
      Hello[] harr = new Hello[3];
      harr[0] = new Hello();
      harr[1] = new Hello("홍길동");
      harr[2] = new Hello("허균");

      for(Hello h : harr)
         h.sayHello();
   }
}
