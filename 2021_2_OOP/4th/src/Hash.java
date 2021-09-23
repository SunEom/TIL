import java.util.Scanner;

public class Hash {
   public static void main(String[] args){
      System.out.println("문자 다섯 개를 한 줄에 한 개씩 입력하세요.");
      Scanner sc = new Scanner(System.in);
      double hash = 0.0;

      char[] s = new char[5];

      for(int i=0; i<5;i++){
         char ch = sc.next().charAt(0);
         s[i] = ch;
      }

      for(int i=0; i<5;i++){
         hash += s[i]* Math.pow(31,4-i);
      }

      System.out.printf("문자열 %c%c%c%c%c의 해시 값은 %.2f입니다.\n",s[0],s[1],s[2],s[3],s[4],hash);
   }
}
