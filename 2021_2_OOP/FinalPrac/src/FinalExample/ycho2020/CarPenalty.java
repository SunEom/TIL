package FinalExample.ycho2020;

import java.util.HashMap;

public class CarPenalty {
   public HashMap<PENALTY, Integer> penalties = new HashMap<PENALTY, Integer>();

   public CarPenalty(){
      penalties.put(PENALTY.LIGHT, 7);
      penalties.put(PENALTY.PEDESTRIAN, 7);
      penalties.put(PENALTY.YELLOW, 9);
      penalties.put(PENALTY.BUSONLYHIGHWAY, 9);
      penalties.put(PENALTY.LANE, 4);
      penalties.put(PENALTY.OVER60, 13);
      penalties.put(PENALTY.OVER4060, 10);
      penalties.put(PENALTY.OVER2040, 7);
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
