package P2.prac_04_01;

public class Student {
   private String name;
   private double gpa;
   private int incomeGrade;

   Student(String n, double g, int i){
      name = n;
      gpa = g;
      incomeGrade = i;
   }

   public String getName() {
      return name;
   }

   public double getGpa() {
      return gpa;
   }

   public int getIncomeGrade() {
      return incomeGrade;
   }
}
