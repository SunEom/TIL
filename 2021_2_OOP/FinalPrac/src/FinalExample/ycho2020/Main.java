package FinalExample.ycho2020;

public class Main {
   public static void main(String[] args){
      AutoPenalty ap = new AutoPenalty();
      CarPenalty cp = new CarPenalty();
      VanPenalty vp = new VanPenalty();

      vp.setPenalty(PENALTY.OVER2040, 12);
      cp.setPenalty(PENALTY.OVER2040, 11);
      ap.setPenalty(PENALTY.OVER2040, 8);

      vp.setPenalty(PENALTY.LIGHT, 9);
      cp.setPenalty(PENALTY.LIGHT, 8);
      ap.setPenalty(PENALTY.LIGHT, 4);

      System.out.printf("CASE 1: penalty: %d\n",ap.getPenalty(PENALTY.OVER2040));
      System.out.printf("CASE 2: penalty: %d\n",vp.getPenalty(new PENALTY[] {PENALTY.LIGHT,PENALTY.YELLOW}));
      System.out.printf("CASE 3: penalty: %d\n",cp.getPenalty(new PENALTY[] {PENALTY.BUSONLYHIGHWAY,PENALTY.OVER60}));

      int totalPenalty = 0;

      for(int i=0; i<10;i++){
         int vehicle = (int)(Math.random()*3);
         int violationNumber = (int)(Math.random()*9);
         PENALTY violation = getPenaltyName(violationNumber);
         if(vehicle == 0){ // van
            int penalty = vp.getPenalty(violation);
            System.out.printf("car : VAN, violation: %s, penalty: %d\n",violation,penalty);
            totalPenalty += penalty;
         } else if(vehicle == 1){ // car
            int penalty = cp.getPenalty(violation);
            System.out.printf("car : CAR, violation: %s, penalty: %d\n",violation,penalty);
            totalPenalty += penalty;
         } else if(vehicle == 2){ // auto
            int penalty = ap.getPenalty(violation);
            System.out.printf("car : AUTO, violation: %s, penalty: %d\n",violation,penalty);
            totalPenalty += penalty;
         }
      }

      System.out.printf("Total amount of penalty : %d\n",totalPenalty);
   }

   public static PENALTY getPenaltyName(int num){
      if(num ==0)
         return PENALTY.LIGHT;
      else if( num == 1)
         return PENALTY.PEDESTRIAN;
      else if(num == 2)
         return PENALTY.YELLOW;
      else if(num == 3)
         return PENALTY.BUSONLYHIGHWAY;
      else if(num ==4)
         return PENALTY.LANE;
      else if(num ==5)
         return PENALTY.OVER60;
      else if(num ==6)
         return PENALTY.OVER4060;
      else if(num ==7)
         return PENALTY.OVER2040;
      else if(num ==8)
         return PENALTY.OVER20;
      return  null;
   }
}
