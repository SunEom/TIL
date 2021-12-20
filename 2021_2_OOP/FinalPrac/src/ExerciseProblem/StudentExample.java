package ExerciseProblem;

import java.util.Scanner;

public class StudentExample {
   public static void main(String[] args){
      StudentSearch ss = new StudentSearch();
      Scanner sc = new Scanner(System.in);

      ss.add(new Student("aaa","computer science","1234",3.5));
      ss.add(new Student("bbb","physics","2345",3.2));
      ss.add(new Student("ccc","psychology","3456",4.3));
      ss.add(new Student("ddd","economics","4567",2.3));

      while(true){
         String stNo = sc.next();
         if(stNo.equals(""))
            break;
         System.out.println(ss.search(stNo));
      }
   }
}
