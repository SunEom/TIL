package ex_02;

import java.util.Scanner;

public class ChangeMoney {
   public static void main(String[] args){
      Scanner sc = new Scanner(System.in);
      int num = sc.nextInt();
      int a = 0, b = 0, c = 0, d = 0, e = 0, f = 0, g = 0;
      a = (int) Math.floor(num/50000);
      num %= 50000;
      b = (int) Math.floor(num/10000);
      num %= 10000;
      c = (int) Math.floor(num/1000);
      num %= 1000;
      d = (int) Math.floor(num/500);
      num %= 500;
      e = (int) Math.floor(num/100);
      num %= 100;
      f = (int) Math.floor(num/10);
      num %= 10;
      g = num;

      System.out.printf("오만 원권 : %d매, 만 원권 : %d매, 천 원권 : %d매, 500원짜리 동전 : %d개, 100원짜리 동전 : %d개, 10원짜리 동전 : %d개, 1원짜리 동전 : %d개\n",a,b,c,d,e,f,g);
   }
}
