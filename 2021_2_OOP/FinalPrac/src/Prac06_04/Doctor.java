package Prac06_04;

public class Doctor {
   private int number = 13819;
   private String name;

   public Doctor(String name){
      this.name = name;
   }

   public int getNumber() {
      return number;
   }

   public String getName() {
      return name;
   }

   @Override
   public String toString(){
      return "의사번호: "+getNumber()+", 의사이름: "+getName();
   }
}
