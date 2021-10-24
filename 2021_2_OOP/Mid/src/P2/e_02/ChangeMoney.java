package P2.e_02;

public class ChangeMoney {
   public static void printResult(int money){
      int a = money/50000; // 5만원권의 개수
      money %= 50000;
      int b = money/10000; // 1만원권의 개수
      money %= 10000;
      int c = money/1000; //1천원권의 개수
      money %= 1000;
      int d = money/500; //500원 동전의 개수
      money %= 500;
      int e = money/100; //100원 동전의 개수
      money %= 100;
      int f = money/10; // 10원 동전의 개수
      money %= 10;
      int g = money;

      System.out.printf("오만원권 %d매, 만원권 %d매, 천원권 %d매, 500원 동전 %d개, 100원 동전 %d개, 10원 동전 %d개, 1원 동전 %d개\n",a,b,c,d,e,f,g);
   }


}
