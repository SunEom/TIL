package P1.prac_06_02;

public class Student {
   String stNo;
   String name;

   Student(String stNo, String name){
      this.stNo = stNo;
      this.name = name;
   }

   String getStNo(){
      return stNo;
   }

   String getName(){
      return name;
   }

   public String toString(){
      return stNo+" "+name;
   }
}
