public class Hello {
   public static void main(String[] args){
      sum();
   }

   public static void sum(){
      int result =1;
      for(int i=1; i<6;i++){
         result *= i;
      }
      System.out.println(result);
   }

}
