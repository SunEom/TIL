package Prac06_04;

public class Patient {
   private int number;
   private String name;

   public Patient(int number, String name){
      this.number = number;
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
      return "환자번호: "+getNumber()+", 환자이름: "+getName();
   }
}
