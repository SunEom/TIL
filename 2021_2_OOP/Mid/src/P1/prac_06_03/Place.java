package P1.prac_06_03;

public class Place {
   String phone;
   String name;

   Place(String phone, String name){
      this.phone = phone;
      this.name = name;
   }

   public String toString(){
      return phone + " " +name;
   }
}
