package ex_04;

import java.util.Scanner;

public class PhoneBook {
   Phone[] phoneBook;
   public static void main(String[] args){
      Scanner sc = new Scanner(System.in);
      System.out.printf("인원수 >> ");
      int size = sc.nextInt();
      PhoneBook p = new PhoneBook(size);


      while(true){
         System.out.printf("검색할 이름 >> ");
         String name = sc.next();
         if(name.equals("그만"))
            break;
         for(int i=0; i< size; i++){
            if(p.phoneBook[i].getName().equals(name)){
               System.out.printf("%s의 번호는 %s입니다.\n",name, p.phoneBook[i].getTel());
               break;
            }
            if(i == size-1)
               System.out.printf("%s 이 없습니다.\n",name);
         }
      }
   }

   PhoneBook(int size){
      phoneBook = new Phone[size];

      for(int i=0; i<size; i++){
         Scanner sc = new Scanner(System.in);
         String name;
         String tel;
         System.out.printf("이름과 전화번호(이름과 번호는 빈 칸 없이 입력)>> ");
         name = sc.next();
         tel = sc.next();
         phoneBook[i] = new Phone(name, tel);
      }
   }

}
