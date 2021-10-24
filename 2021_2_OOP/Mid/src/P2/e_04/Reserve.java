package P2.e_04;

import java.util.Scanner;

public class Reserve {
   public static void main(String[] args){
      Seat sSeat = new Seat('s');
      Seat aSeat = new Seat('a');
      Seat bSeat = new Seat('b');

      Scanner sc = new Scanner(System.in);
      String command;
      while(true){
         System.out.printf("메뉴 선택 (예약, 조회, 취소, 끝내기) : ");
         command = sc.next();
         if(command.equals("끝내기"))
            break;
         
         if(command.equals("예약")){
            System.out.printf("좌석 타입(s/a/b) : ");
            char type = sc.next().charAt(0);
            System.out.printf("예약자 이름 : ");
            String name = sc.next();
            System.out.printf("좌석 번호(1~10) : ");
            int num = sc.nextInt();

            if(type == 'a' || type == 'A'){
               aSeat.reserve(name, num);
            } else if(type == 'b' || type == 'B'){
               bSeat.reserve(name, num);
            } else if(type == 's' || type == 'S'){
               sSeat.reserve(name, num);
            }
         }
         
         if(command.equals("조회")){
            aSeat.printAll();
            bSeat.printAll();
            sSeat.printAll();
         }

         if(command.equals("취소")){
            System.out.printf("좌석 타입(s/a/b) : ");
            char type = sc.next().charAt(0);
            System.out.printf("예약자 이름 : ");
            String name = sc.next();
            System.out.printf("좌석 번호(1~10) : ");
            int num = sc.nextInt();

            if(type == 'a' || type == 'A'){
               aSeat.delete(name, num);
            } else if(type == 'b' || type == 'B'){
               bSeat.delete(name, num);
            } else if(type == 's' || type == 'S'){
               sSeat.delete(name, num);
            }
         }
      }
   }
}
