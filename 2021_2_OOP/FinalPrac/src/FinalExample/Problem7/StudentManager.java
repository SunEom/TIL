package FinalExample.Problem7;

import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map;
import java.util.Scanner;

public class StudentManager {
   public static void main(String[] args){
      Hashtable<String, Student> dept = new Hashtable<String, Student>();
      Scanner sc = new Scanner(System.in);
      String name, department, stNo;
      double gpa;

      for(int i=0; i<3; i++){
         System.out.printf("Enter your name: ");
         name = sc.next();

         System.out.printf("Enter your department: ");
         department = sc.next();

         System.out.printf("Enter your stNo: ");
         stNo = sc.next();

         System.out.printf("Enter your GPA: ");
         gpa = sc.nextDouble();

         dept.putIfAbsent(stNo, new Student(name, department, stNo, gpa));
      }

      System.out.printf("Enter a Student Number: ");
      stNo = sc.next();

      Student sTemp = dept.get(stNo);
      if(sTemp != null){
         System.out.println(sTemp);
      }
   }
}
