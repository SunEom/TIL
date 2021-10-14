package ex_04;

import java.util.Scanner;

public class Reserve {
   Seat[] reserved = new Seat[30];
   int count = 0;

   public static void main(String[] args){

   }

   void reserve(){
      Scanner sc = new Scanner(System.in);
      char type;
      String name;
      int seatNumber;

      System.out.println("예약 메뉴 입니다.");
      System.out.printf("좌석 타입을 입력해주세요 (S/A/B) : ");
      type = sc.next().charAt(0);
      while(type != 'S' && type != 'A' && type !='B'){
         System.out.printf("잘못된 입력입니다. 좌석 타입을 다시 입력해주세요 (S/A/B) : ");
         type = sc.next().charAt(0);
      }
      System.out.println("");

      System.out.printf("예약자 이름을 입력해주세요 : ");
      name = sc.next();
      System.out.println("");

      System.out.printf("좌석 번호를 입력해주세요 (1 ~ 10) : ");
      seatNumber = sc.nextInt();
      while(seatNumber <=0 || seatNumber > 10){
         System.out.printf("잘못된 입력입니다. 좌석 번호를 다시 입력해주세요 (1 ~ 10) : ");
         seatNumber = sc.nextInt();
      }
      while(true){
         boolean isAlreadyReserved = false;
         for(int i =0; i<count; i++)
            if(reserved[i].getType() == type && reserved[i].getSeatNumber() == seatNumber){
               isAlreadyReserved = true;
               break;
            }

         if(isAlreadyReserved == false) break;

         System.out.printf("이미 예약된 자석입니다. 좌석 번호를 다시 입력해주세요 (1 ~ 10) : ");
         seatNumber = sc.nextInt();
      }
      System.out.println("");

      reserved[count++] = new Seat(type, name, seatNumber);
   }

   void search(){
      for(int i=0; i <count; i++){
         System.out.println("Type : "+reserved[i].getType() +" / Reserver Name : "+reserved[i].getName() +" / Seat Number : "+reserved[i].getSeatNumber() +"\n");
      }
   }

   void cancel(){
      String name;
      Scanner sc = new Scanner(System.in);
      System.out.printf("예약자 이름을 입력해주세요 : ");
      name = sc.next();

      for(int i=0; i<count; i++){
         if(reserved[i].getName().equals(name)){
            for(int j=i; j<count-1; j++)
               reserved[j] =reserved[j+1];
            count--;
            System.out.println("정상적으로 취소되었습니다.");
            return;
         }
      }
      System.out.println("해당 예약자를 찾지 못했습니다.");
      System.out.println("");
   }

   void exit(){

   }
}
