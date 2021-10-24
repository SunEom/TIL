package P2.Assignment4;

public class DiceProbability {
   private int count;
   private int[] eachCase;
   private int[] eachCount = new int[6];
   private double[] probabilities = new double[6];
   private boolean isRolled = false;
   private boolean isCalced = false;

   DiceProbability(int n){
      count = n;
      eachCase = new int[count];
   }

   void roll(){
      for(int i=0 ; i<count ; i++)
         eachCase[i] = Dice.roll();
      isRolled = true;
   }

   void calcProbabiliy(){
      if(isRolled){
         for(int i=0; i<count; i++)
            eachCount[eachCase[i]-1]++;

         for(int i=0 ;i<6; i++)
            probabilities[i] = ((double)eachCount[i]) / count;

         isCalced = true;
      }
   }

   void printProbabiliy(){
      for(int i=0; i<6; i++){
         System.out.printf("주사위 %d : %d, 비율 : %g\n",i+1, eachCount[i], probabilities[i]);
      }
   }
}
