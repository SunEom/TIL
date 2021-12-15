package Prac06_06;

public class Student {
   private String name;
   private int stdNum;
   private double gpa;

   public Student(String name, int stdNum, double gpa){
      this.name = name;
      this.stdNum = stdNum;
      this.gpa = gpa;
   }

   public String getName(){
      return this.name;
   }

   public int getNumber(){
      return this.stdNum;

   }

   public double getGPA(){
      return this.gpa;
   }

   @Override
   public String toString(){
      return "Name: "+this.name+", Number: "+this.stdNum+", GPA: "+this.gpa;
   }
}
