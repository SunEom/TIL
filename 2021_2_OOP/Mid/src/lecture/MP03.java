package lecture;

class CardDeck{
   String shape;
   int[] deck = new int[3];
   int cardNum;

   CardDeck(){
      shape ="Diamond";
      for(int i=0; i<3 ; i++){
         deck[i] = (int) Math.floor(Math.random() * 9) + 2;
      }
      cardNum = 3;
   }

   void printCardNum(){
      System.out.printf("현재 남아 있는 카드는 %d장 입니다.\n\n",cardNum);
   }

   void deal(){
      if(cardNum ==0){
         System.out.println("카드가 더 이상 없습니다.");
         return;
      }
      System.out.println("카드를 한 장 제거하였습니다.");
      System.out.printf("제거된 카드 -> 모양 : %s, 번호 : %d\n\n",shape, deck[cardNum-1]);
      cardNum--;
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
      cd.deal();
      cd.printCardNum();
      cd.deal();


   }
}
