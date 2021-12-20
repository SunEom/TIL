package ExerciseProblem;

public class Student {
   private String name;
   private String dept;
   private String stNo;
   private double gpa;

   public Student(String name, String dept, String stNo, double gpa) {
      this.name = name;
      this.dept = dept;
      this.stNo = stNo;
      this.gpa = gpa;
   }

   public String getName() {
      return name;
   }

   public String getDept() {
      return dept;
   }

   public String getStNo() {
      return stNo;
   }

   public double getGpa() {
      return gpa;
   }

   @Override
   public String toString() {
      return "이름: "+this.getName()+", 학번: "+this.getStNo()+", 학과: "+this.getDept()+", 학점 평균: "+this.getGpa();
   }
}
