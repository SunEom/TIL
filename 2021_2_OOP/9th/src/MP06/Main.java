package MP06;

public class Main {
   public static void main(String[] args){
      StudentDB db = new StudentDB();
      
      Student s1 = new Student("김지우", 20191111, 4.01);
      db.add(s1);
      
      db.add("이민준",201922222, 3.85);
      db.add("박서윤",201933333, 3.90);

      System.out.println(db.findBy("김지우").toString());
      System.out.println(db.findBy(201922222).toString());
      System.out.println(db.findBy(3.90).toString());
      System.out.println(db.findBy(0,3.95).toString());
      System.out.println(db.findBy(1, 3.95).toString());
   }
}
