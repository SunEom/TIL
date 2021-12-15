package FinalExample.Problem7;

public class Student {
   private String name;
   private String department;
   private String stNo;
   private double gpa;

   public Student(String name,String department, String stNo, double gpa){
      this.name = name;
      this.department = department;
      this.stNo = stNo;
      this.gpa = gpa;
   }

   @Override
   public String toString(){
      return "이름: "+this.name + ", 학과: "+this.department +", 학번 : "+this.stNo+", 학점평균: "+this.gpa;
   }
}
