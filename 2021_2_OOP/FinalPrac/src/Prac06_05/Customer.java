package Prac06_05;

public class Customer {
   private String name;
   private String phNo;
   private int visit;
   
   public Customer(String name, String phNo, int visit){
      this.name = name;
      this.phNo = phNo;
      visit = 0;
   }

   public String getName() {
      return name;
   }

   public String getPhNo() {
      return phNo;
   }

   public int increaseVisit(){
      visit+=1;
      if(visit==10){
         System.out.println("커피 쿠폰 발행");
         this.resetVisit();
         return 10;
      }
      return visit;
   }

   public void resetVisit(){
      visit = 0;
   }

   @Override
   public String toString() {
      return "고객번호: "+getPhNo()+", 고객명: "+getName();
   }
}
