package FinalExample.ycho2020;

import java.util.HashMap;

public class VanPenalty {
   public HashMap<PENALTY, Integer> penalties = new HashMap<PENALTY, Integer>();

   public VanPenalty(){
      penalties.put(PENALTY.LIGHT, 8);
      penalties.put(PENALTY.PEDESTRIAN, 8);
      penalties.put(PENALTY.YELLOW, 10);
      penalties.put(PENALTY.BUSONLYHIGHWAY, 10);
      penalties.put(PENALTY.LANE, 4);
      penalties.put(PENALTY.OVER60, 14);
      penalties.put(PENALTY.OVER4060, 11);
      penalties.put(PENALTY.OVER2040, 8);
      penalties.put(PENALTY.OVER20, 4);
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
