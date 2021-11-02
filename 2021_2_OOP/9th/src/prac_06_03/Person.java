package prac_06_03;

public class Person {
   private String name;
   private String phone;

   public Person(String n, String p){
      this.name = n;
      this.phone = p;
   }

   public String getName(){
      return this.name;
   }

   public String getPhone(){
      return this.phone;
   }

   public String toString(){
      return this.name+" "+this.phone;
   }
}
