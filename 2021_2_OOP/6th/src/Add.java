public class Add {
   String add(int a, int b){
      int temp = a+b;
      return temp +"";
   }
   String add(double a, int b){
      double temp = a+b;
      return temp +"";
   }
   String add(int a, double b){
      double temp = a+b;
      return temp +"";
   }
   String add(double a, double b){
      double temp = a+b;
      return temp +"";
   }

   String add(String a, String b){
      String temp = a + " " + b;
      return temp;
   }

   public static void main(String[] args){
      Add a = new Add();

      System.out.println(a.add(1,2));
      System.out.println(a.add(1.0,2));
      System.out.println(a.add(1,2.0));
      System.out.println(a.add(1.0,2.0));
      System.out.println(a.add("1","2"));
   }
}
