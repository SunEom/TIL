package MP06;

public class Student {
   private String name;
   private int number;
   private double gpa;

   public Student(String name, int num, double gpa){
      this.name = name;
      this.number = num;
      this.gpa = gpa;
   }

   public String getName(){
      return this.name;
   }

   public int getNumber(){
      return this.number;
   }

   public double getGPA(){
      return this.gpa;
   }

   public String toString(){
      return "Name: "+getName()+", Number: "+getNumber()+", GPA: "+getGPA();
   }
}
