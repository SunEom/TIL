package Prac06_06;

public class Main {
   public static void main(String[] args){
      StudentDB stdDb = new StudentDB();
      Student std1 = new Student("김지우", 201911111,4.01);

      stdDb.add(std1);
      stdDb.add("이민준", 201922222, 3.85);
      stdDb.add("박서윤", 201933333, 3.90);

      System.out.println(stdDb.findBy("김지우"));
      System.out.println(stdDb.findBy(201922222));
      System.out.println(stdDb.findBy(3.90));
      System.out.println(stdDb.findBy(0,3.95));
      System.out.println(stdDb.findBy(1,3.95));

   }
}
