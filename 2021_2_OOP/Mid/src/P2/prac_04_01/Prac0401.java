package P2.prac_04_01;

public class Prac0401 {
   private static Student s1 = new Student("김규상", 4.1, 3);
   private static Student s2 = new Student("김민재", 3.71, 5);
   private static Student s3 = new Student("김용하", 3.93, 7);
   private static Student[] sarr = {s1, s2, s3};

   public static void main(String[] args){
      for(Student s : sarr){
         if(s.getGpa() >= 3.5 && s.getIncomeGrade() <=5)
            System.out.println(s.getName() + "은(는) 장학생 후보입니다.");
      }
   }
}
