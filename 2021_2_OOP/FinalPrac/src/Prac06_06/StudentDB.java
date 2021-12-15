package Prac06_06;

public class StudentDB {
   private static final int LOWER_THAN = 0;
   private static final int HIGHER_THAN = 1;
   private Student[] stdArr;
   private int idx = 0;

   public StudentDB(){
      this.stdArr = new Student[3];
   }

   public void add(Student s){
      stdArr[idx++] = s;
   }

   public void add(String name, int stdNum, double gpa){
      stdArr[idx++] = new Student(name, stdNum, gpa);
   }

   public Student findBy(String name){
      for(Student s : stdArr)
         if(s.getName().equals(name))
            return s;
      return null;
   }

   public Student findBy(int stdNum){
      for(Student s : stdArr)
         if(s.getNumber() == stdNum)
            return s;
      return null;
   }

   public Student findBy(double gpa){
      for(Student s : stdArr)
         if(s.getGPA() == gpa)
            return s;
      return null;
   }

   public Student findBy(int param, double gpa){
      if(param == LOWER_THAN){
         for(Student s : stdArr)
            if(s.getGPA() <= gpa)
               return s;
      } else if(param == HIGHER_THAN){
         for(Student s : stdArr)
            if(s.getGPA() >= gpa)
               return s;
      }
      return null;
   }
}
