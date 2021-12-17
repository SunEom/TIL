package FinalExample.ycho2021;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class WordCounter extends WordList{
   private ArrayList<String> notAllow = new ArrayList<String>();
   private Map<String, Integer> countResult = new HashMap<>();

   public WordCounter(String string, char[] separator, String[] notAllow){
      super(string, separator);
      for(int i=0; i<notAllow.length; i++)
         this.notAllow.add(notAllow[i]);
   }

   public void countWords(){
      super.addWords();
      for(String w : words){
         if(!isNotAllowed(w)){
            if(!countResult.containsKey(w)){
               countResult.put(w,1);
            } else {
               countResult.replace(w, countResult.get(w)+1);
            }
         }
      }
   }

   public void printResult(int n){
      Iterator itr = countResult.keySet().iterator();

      while(itr.hasNext()){
         String w = (String) itr.next();
         int value = countResult.get(w);
         if(value>=n)
            System.out.printf("%s:%d\n",w, value);
      }
   }

   public boolean isNotAllowed(String s){
      if(notAllow.contains(s))
         return true;
      else
         return false;
   }

}
