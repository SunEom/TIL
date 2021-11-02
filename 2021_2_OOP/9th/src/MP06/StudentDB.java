package MP06;

public class StudentDB {
   private static final int LOWER_THAN = 0;
   private static final int HIGHER_THAN = 1;
   private Student[] students;
   private int count;

   public StudentDB(){
      this.students = new Student[3];
   }

   public void add(Student student){
      if(count<3){
         students[count] = student;
         count++;
      }
   }

   public void add(String name, int num, double gpa){
      if(count<3){
         students[count] = new Student(name, num, gpa);
         count++;
      }
   }

   public Student findBy(String name){
      for(int i=0; i<count; i++){
         if(students[i].getName().equals(name))
            return students[i];
      }
      return null;
   }

   public Student findBy(int number){
      for(int i=0; i<count; i++){
         if(students[i].getNumber() == number)
            return students[i];
      }
      return null;
   }

   public Student findBy(int param, double gpa){
      if(param == LOWER_THAN){
         for(int i=0; i<count; i++){
            if(students[i].getGPA() < gpa)
               return students[i];
         }
         return null;
      } else if(param == HIGHER_THAN){
         for(int i=0; i<count; i++){
            if(students[i].getGPA() > gpa)
               return students[i];
         }
         return null;
      }
      return null;
   }

   public Student findBy(double gpa){
      for(int i=0; i<count; i++){
         if(students[i].getGPA() == gpa)
            return students[i];
      }
      return null;
   }
}
