package P2.Assignment3;

public class CardDeck {
   private int cardNum;
   private String shape = "Diamond";
   private int[] cards;

   CardDeck(){
      cardNum = 3;
      cards = new int[3];
      for(int i=0 ; i<3 ; i++)
         cards[i] = (int) Math.floor(Math.random() * 9 + 2);
   }

   public void deal(){
      if(cardNum>0){
         System.out.printf("모양 : %s, 카드번호 : %d \n", shape, cards[cardNum-1]);
         cardNum--;
      } else {
         System.out.println("카드가 더이상 없습니다.");
      }
   }

   public void printCardDeck(){
      System.out.printf("현재 카드가 %d장 남아있습니다.\n", cardNum);
   }
}

