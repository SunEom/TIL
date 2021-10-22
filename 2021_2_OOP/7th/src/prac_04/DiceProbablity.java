package prac_04;

public class DiceProbablity {
   private int count;
   private int[] eachResult;
   private int[] eachCount;
   private double[] probablity;
   private boolean isRolled;
   private boolean isProbablityCalced;


   public DiceProbablity(int n){
      count = n;
      eachResult = new int[n];
      eachCount = new int[6];
      probablity = new double[6];
      isRolled = false;
      isProbablityCalced = false;
   }

   public void roll(){
      for(int i=0; i<count; i++){
         eachResult[i] = Dice.roll();
      }
      isRolled = true;
   }

   void calcProbablity(){
      if(isRolled == false)
         return;
      for(int i=0; i<count; i++){
         int temp = eachResult[i];
         if(temp == 1){
            eachCount[0]++;
         } else if(temp == 2){
            eachCount[1]++;
         } else if(temp == 3){
            eachCount[2]++;
         } else if(temp == 4){
            eachCount[3]++;
         } else if(temp == 5){
            eachCount[4]++;
         } else if(temp == 6){
            eachCount[5]++;
         }
      }

      for(int i=0; i<6;i++){
         probablity[i] = (double)eachCount[i]/count;
      }

      isProbablityCalced = true;
   }

   void printProbablity(){
      if(isProbablityCalced == false)
         return;
      for(int i=0; i<6; i++){
         System.out.printf("주사위 %d: %d, 비율 : %g\n",i+1,eachCount[i], probablity[i]);
      }
   }
}
