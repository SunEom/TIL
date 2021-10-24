package P2.e_04;

public class Seat {
   private SeatType type;
   private String[] reserved = new String[10];
   int reservedCount = 0;

   Seat(char t){
      type = new SeatType(t);
   }

   public void reserve(String name, int num){
      if(reservedCount == 10)
         System.out.println("빈 좌석이 없습니다.");
      if(reserved[num-1] != null)
         System.out.println("이미 예약된 좌석입니다.");
      else{
         reserved[num-1] = name;
         reservedCount++;
      }
   }

   public void printAll(){
      System.out.println(type.getType()+" Type 좌석");
      for(int i=0; i<10; i++){
         if(reserved[i] != null)
            System.out.printf("좌석번호 : %d, 예약자 이름 : %s\n",i+1, reserved[i]);
      }
      System.out.println();
   }

   public void delete(String name, int num){
      if(reserved[num-1].equals(name)){
         reservedCount--;
         reserved[num-1] = null;
      } else {
         System.out.println("잘못된 정보입니다.");
      }
   }
}
