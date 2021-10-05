class CardDeck{
   int num;
   String shape;
   int[] cards;

   CardDeck(){
      this.num = 3;
      this.shape = "Diamond";
      cards = new int[3];
      for(int i=0; i<3; i++)
         cards[i] = (int)Math.floor(Math.random()*9)+2;
   }

   void deal(){
      if(num == 0 ){
         System.out.println("카드가 더 이상 없습니다.");
      } else {
         System.out.printf("뽑은 카드 -> 모양 : %s, 번호 %d\n",shape, cards[num-1]);
         num--;
      }
   }

   void printCardNum(){
      System.out.printf("남은 카드의 개수 : %d\n",num);
   }
}

public class MP03 {
   public static void main(String[] args){
      CardDeck cd = new CardDeck();

      cd.printCardNum();
      cd.deal();
      cd.printCardNum();
      cd.deal();
      cd.printCardNum();

   }
}
