package P1.prac_06_03;

public class Person {
   String phone;
   String name;

   Person(String phone, String name){
      this.phone = phone;
      this.name = name;
   }

   public String toString(){
      return phone + " " +name;
   }
}
