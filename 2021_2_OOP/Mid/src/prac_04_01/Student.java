package prac_04_01;

public class Student {
   String name;
   double gpa;
   int incomeGrade;

   Student(String name, double gpa, int incomeGrade){
      this.name = name;
      this.gpa = gpa;
      this.incomeGrade = incomeGrade;
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

   void isSelected(){
      if(getGpa() >= 3.5 && getIncomeGrade()<=5)
         System.out.println("장학생으로 선발되었습니다.");
      else
         System.out.println("장학생으로 선발되지 못했습니다.");
   }
}
