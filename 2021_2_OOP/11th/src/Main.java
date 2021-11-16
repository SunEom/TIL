public class Main {
   public static void main(String[] args){
      Parent p = new Parent();
      Parent c = new Child();

      p.print();
      c.print();

      print(new Parent());
      print(new Child());

   }
   static void print(Parent p){
      p.print();
   }
}
