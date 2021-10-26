public class SpeechHistogram {
   private int[] counts;
   private int[] groupCounts;
   private Speech speech;

   SpeechHistogram (Speech speech){
      this.speech = speech;
      counts = new int[26];
      groupCounts = new int[5];
   }

   public void calculateHistogram(){
      for(int i=0; i<speech.getNumOfWords(); i++){
         counts[ConvertChar.toLowerCase(speech.getFirstCharOfWord(i)) -'a']++;
      }

      for(int i=0; i<counts.length; i++){
         if(i/5 ==0){
            groupCounts[0] += counts[i];
         } else if(i/5 ==1){
            groupCounts[1] += counts[i];
         } else if(i/5 ==2){
            groupCounts[2] += counts[i];
         } else if(i/5 ==3){
            groupCounts[3] += counts[i];
         } else if(i/5 ==4){
            groupCounts[4] += counts[i];
         }
      }
   }

   public void print(){
      for(int i=0; i<counts.length; i++){
         System.out.printf("%c:(%d)\n",'a'+i,counts[i]);
      }

      for(int i=0; i<groupCounts.length; i++){
         if(i == 0){
            System.out.printf("\'a\'=\'e\':(%d)",groupCounts[i]);
            for(int j=0; j < groupCounts[i];j++)
               System.out.printf("*");
            System.out.println();
         } else if(i == 1){
            System.out.printf("\'f\'=\'j\':(%d)",groupCounts[i]);
            for(int j=0; j<groupCounts[i];j++)
               System.out.printf("*");
            System.out.println();
         } else if(i == 2){
            System.out.printf("\'k\'=\'o\':(%d)",groupCounts[i]);
            for(int j=0; j<groupCounts[i];j++)
               System.out.printf("*");
            System.out.println();
         } else if(i == 3){
            System.out.printf("\'p\'=\'t\':(%d)",groupCounts[i]);
            for(int j=0; j<groupCounts[i];j++)
               System.out.printf("*");
            System.out.println();
         } else if(i == 4){
            System.out.printf("\'u\'=\'y\':(%d)",groupCounts[i]);
            for(int j=0; j<groupCounts[i];j++)
               System.out.printf("*");
            System.out.println();
         }
      }
   }
}
