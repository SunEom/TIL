public class Speech {
   private String[] speech;

   Speech(String[] speech){
      String[] temp = new String[speech.length];
      for(int i=0; i<speech.length; i++)
         temp[i] = speech[i];
      this.speech = temp;
   }

   Character getFirstCharOfWord(int idx){
      if(idx >= speech.length){
         return null;
      } else {
         return speech[idx].charAt(0);
      }
   }

   int getNumOfWords(){
      return speech.length;
   }
}
