package prac_06_02;

public class ObjectOrientedCourse {
   private final int maxStudentNum = 30;
   private String[] students = new String[maxStudentNum];
   private String lecturer;
   private String classroom;
   private int studentCount;

   public ObjectOrientedCourse(String lecturer, String room){
      this.lecturer = lecturer;
      this.classroom = room;
   }

   public int getStudentCount(){ return studentCount; }

   public void setClassroom(String classroom){
      this.classroom = classroom;
   }

   public void enroll(String name){
      students[studentCount] = name;
      studentCount++;
   }
   public void drop(String name){
      int index= 0;
      for(;index < studentCount; index++)
         if( students[index].equals(name))
            break;

      for(int i= index; i<studentCount-1; i++)
         students[i] = students[i+1];

      studentCount--;
   }

   public void printEnrolled(){
      for(String s : students){
         System.out.println(s +" ");
      }
      System.out.println();
   }
}
