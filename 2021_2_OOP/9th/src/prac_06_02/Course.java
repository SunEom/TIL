package prac_06_02;

public class Course {
   private final int maxStudentNumber = 30;
   private Student[] students = new Student[maxStudentNumber];
   private String room;
   private Lecturer lecturer;
   private Book book;
   private int studentCount = 0;
   public Course(Lecturer lecturer){
      this.lecturer = lecturer;
      this.book = new Book("OOP", "생능출판사",123);
   }

   public void enroll(Student s){
      if(studentCount < 30){
         students[studentCount] = s;
         studentCount++;
      }
   }

   public void drop(Student s){
      int index = 0;
      for(Student student: students){
         if(student.getStNo() == s.getStNo())
            break;
         index++;
      }

      for(int i=index; i<studentCount-1 ;i++)
         students[i] = students[i+1];

      studentCount--;
   }

   public int getStudentCount(){ return studentCount; }
   public void setRoom(String room){ this.room = room; }

   public void printEnrolled(){
      for(Student s : students){
         System.out.println(s.toString());
      }
   }
}
