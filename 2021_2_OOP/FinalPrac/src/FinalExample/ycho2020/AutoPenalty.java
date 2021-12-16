package FinalExample.ycho2020;

import java.util.HashMap;

public class AutoPenalty {
   private HashMap<PENALTY, Integer> penalties = new HashMap<PENALTY, Integer>();

   public AutoPenalty(){
      penalties.put(PENALTY.LIGHT, 5);
      penalties.put(PENALTY.PEDESTRIAN, 5);
      penalties.put(PENALTY.YELLOW, 0);
      penalties.put(PENALTY.BUSONLYHIGHWAY, 0);
      penalties.put(PENALTY.LANE, 3);
      penalties.put(PENALTY.OVER60, 9);
      penalties.put(PENALTY.OVER4060, 7);
      penalties.put(PENALTY.OVER2040, 5);
      penalties.put(PENALTY.OVER20, 3);
   }

   public void setPenalty(PENALTY type, int value){
      penalties.put(type, value);
   }

   public int getPenalty(PENALTY type){
      Integer p = penalties.get(type);
      if(p != null)
         return (int)p;

      return 0;
   }

   public int getPenalty(PENALTY[] type){
      int total = 0;
      for(PENALTY p : type){
         Integer temp = penalties.get(p);
         if(temp != null)
            total += (int)temp;
      }
      return total;
   }
}
