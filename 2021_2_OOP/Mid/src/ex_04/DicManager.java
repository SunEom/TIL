package ex_04;

import java.util.Scanner;

public class DicManager {
   public static void main(String[] args){
      Scanner sc = new Scanner(System.in);
      System.out.println("한영 단어 검색 프로그램입니다.");
      String word ="";
      while(true){
         System.out.printf("한글 단어? ");
         word = sc.next();
         if(word.equals("그만"))
            break;
         String engWord = Dictionary.kor2Eng(word);
         if(engWord.equals("Not Exist")){
            System.out.printf("%s는 저의 사전에 없습니다.\n",word);
         } else {
            System.out.printf("%s는 %s\n",word, engWord);
         }
      }
   }
}
