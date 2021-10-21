package P1.prac_06_02;

public class ObjectOrientedCourse {
   final static int MAX_STUDENTS = 30;
   String lecturer;
   String room;
   int numEnrolled;
   String[] students;

   void setRoom(String room){
      this.room = room;
   }

   void enroll(){

   }

   void drop(){

   }

   int getNumEnroll(){
      return students.length;
   }

   void printEnrolled(){
      for(int i=0; i <students.length; i++)
         System.out.println(students[i]);
   }


}
