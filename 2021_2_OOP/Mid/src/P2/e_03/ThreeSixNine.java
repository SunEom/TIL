package P2.e_03;

public class ThreeSixNine {
   public static void start(int num){
      for(int i=0; i<num; i++){
         int a = i/10;
         int b = i%10;
         int count = 0;
         
         if(a!=0 && a%3 == 0)
            count++;
         
         if(b!=0 && b%3 == 0)
            count++;
         
         if(count == 1)
            System.out.printf("%d 박수 한번\n",i);
         else if(count == 2)
            System.out.printf("%d 박수 두번\n",i);
      }
   }
}
