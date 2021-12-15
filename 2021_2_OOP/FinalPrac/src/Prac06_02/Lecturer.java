package Prac06_02;

public class Lecturer {
   private String deptName;
   private String name;

   public Lecturer(String deptName, String name){
      this.deptName = deptName;
      this.name = name;
   }

   public String getDeptName(){
      return this.deptName;
   }

   public String getName(){
      return this.name;
   }

   @Override
   public String toString(){
      return "학과: "+getDeptName() +", 이름: "+getName();
   }
}
