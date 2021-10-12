package ex_03;

public class ThreeSixNine {
   public static void main(String[] args){
      for(int i=1 ; i< 100; i++){
         String temp = i+"";
         int count = 0;
         for(int j=0; j<temp.length(); j++)
            if(temp.charAt(j) == '3' || temp.charAt(j) == '6' || temp.charAt(j) == '9')
               count++;

         if(count == 1)
            System.out.println(i + " 박수 한 번");
         else if(count == 2)
            System.out.println(i + " 박수 두 번");
      }
   }
}
