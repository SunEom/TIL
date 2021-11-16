public class Main {
   public static void main(String[] args){
      Parent p = new Parent();
      Parent c = new Child();

      p.print();
      c.print();

      print(new Parent());
      print(new Child());
      print(new Child2());

      Child c2 = new Child();
      c2.privatePrint();

      Parent p2 = new Child();
      ((Child)p2).privatePrint();

      System.out.printf("getN : n = %d\n",p.getN());
      p.setN(123);
      System.out.printf("getN : n = %d\n",p.getN());

   }
   static void print(Parent p){
      p.print();
   }
}
