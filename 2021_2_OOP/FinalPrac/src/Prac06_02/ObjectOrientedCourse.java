package Prac06_02;

public class ObjectOrientedCourse {
   final static int MAX_STUDENTS = 30;
   private String lecturer;
   private String room;
   private int numEnrolled;
   private String[] students;

   public ObjectOrientedCourse(String lecturer, String room){
      students = new String[MAX_STUDENTS];
      this.lecturer = lecturer;
      this.room = room;
      numEnrolled = 0;
   }

   public void SetRoom(String room){
      this.room = room;
   }

   public void enroll(String name){
      if(numEnrolled< MAX_STUDENTS)
         students[numEnrolled++] = name;
   }

   public void drop(String name){
      int i = 0;
      for(String s : students){
         if(s.equals(name))
            break;
         i++;
      }

      for(;i<numEnrolled-1; i++)
         students[i] = students[i+1];

      numEnrolled--;
   }

   public int getNumEnrolled(){
      return this.numEnrolled;
   }

   public void printEnrolled(){
      for(String s : students){
         System.out.printf("%s\n",s);
      }
   }
}
