package P2.prac_02_02;

public class Prac_0202 {
   public static void main(String[] args){
      String[] brousers1 = {"Google Chrome", "Microsoft Edge", "Mozilla Firefox", "Naver Whale"};
      String[] brousers2 = new String[4];
      brousers2[0] = "Google Chrome";
      brousers2[1] = "Microsoft Edge";
      brousers2[2] = "Mozilla Firefox";
      brousers2[3] = "Naver Whale";

      for(int i=0; i<4; i++)
         System.out.printf("%s의 문자열 길이 : %d\n",brousers1[i], brousers1[i].length());

      System.out.println();

      for(int i=0; i<4; i++)
         System.out.printf("%s의 문자열 길이 : %d\n",brousers2[i], brousers2[i].length());
   }
}
