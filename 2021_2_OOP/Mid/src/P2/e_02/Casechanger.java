package P2.e_02;

public class Casechanger {
   public static void printChangedChar(char c){
      if(c >='A' && c<='Z')
         System.out.printf("%c\n", c+('a'-'A'));
      else if (c >= 'a' && c <= 'z')
         System.out.printf("%c\n", c-('a'-'A'));
      else
         System.out.println("영문자가 아닙니다.");
   }
}
