public class Person {
   String name;
   Person(String n){
      name = n;
   }
   String getName(){ return name; }
   void setName(String anotherName){
      name = anotherName;
   }
   void tellUsYourName(){
      System.out.println(name);
   }

   public static void main(String[] args){
      Person p1 = new Person("Js");
      Person p2 = new Person("Js1");

      p1.tellUsYourName();
      p2.tellUsYourName();
   }
}
