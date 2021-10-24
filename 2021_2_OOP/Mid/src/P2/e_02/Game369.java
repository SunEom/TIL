package P2.e_02;

public class Game369 {
   public static void printResult(int n){
      if(n>=1 && n<=99){
         int a = n/10;
         int b = n%10;

         if( a == 3){
            if(b == 3 || b ==6 || b==9){
               System.out.println("박수짝짝");
            } else {
               System.out.println("박수짝");
            }
         } else if( a == 6 ){
            if(b == 3 || b ==6 || b==9){
               System.out.println("박수짝짝");
            } else {
               System.out.println("박수짝");
            }
         } else if( a == 9 ){
            if(b == 3 || b ==6 || b==9){
               System.out.println("박수짝짝");
            } else {
               System.out.println("박수짝");
            }
         } else{
            if(b == 3 || b ==6 || b==9){
               System.out.println("박수짝");
            }
         }
      }
   }
}
