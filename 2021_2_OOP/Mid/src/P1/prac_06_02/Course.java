package P1.prac_06_02;

public class Course {
   final static int MAX_STUDENTS = 30;
   Lecturer lecturer;
   String room;
   int numEnrolled;
   Book textbook;
   Student[] students;

   void enroll(){

   }

   void drop(){

   }

   int getNumEnroll(){
      return students.length;
   }

   void printEnrolled(){
      for(int i=0; i <students.length; i++)
         System.out.println(students[i].toString());
   }
}
