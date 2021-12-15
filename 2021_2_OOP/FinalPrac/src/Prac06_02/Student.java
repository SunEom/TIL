package Prac06_02;

public class Student {
   private String stNo;
   private String name;

   public Student(String stNo, String name){
      this.stNo = stNo;
      this.name = name;
   }

   public String getStNo(){
      return this.stNo;
   }

   public String getName(){
      return this.name;
   }

   @Override
   public String toString(){
      return "학번: "+ stNo +", 이름: "+name;
   }
}
