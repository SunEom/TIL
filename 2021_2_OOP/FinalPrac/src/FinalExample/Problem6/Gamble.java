package FinalExample.Problem6;

import java.util.Scanner;

public class Gamble {
   public static void main(String[] args){
      Person p1 = new Person("per1");
      Person p2 = new Person("per2");
      Person[] persons = new Person[2];
      Scanner sc = new Scanner(System.in);

      persons[0] = p1;
      persons[1] = p2;

      int ran1,ran2, ran3;
      int idx = 0;

      while(true){
         System.out.printf("%s's turn... please press Enter...",persons[idx]);
         sc.nextLine();

         ran1 = (int)(Math.random()*4);
         System.out.printf("number1: %d\n",ran1);
         ran2 = (int)(Math.random()*4);
         System.out.printf("number2: %d\n",ran2);
         ran3 = (int)(Math.random()*4);
         System.out.printf("number3: %d\n",ran3);



         if(ran1 == ran2 && ran2 == ran3){
            System.out.printf("Winner is %s\n",persons[idx]);
            break;
         }

         idx++;
         idx %= 2;
      }

   }
}
