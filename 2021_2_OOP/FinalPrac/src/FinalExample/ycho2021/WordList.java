package FinalExample.ycho2021;

import java.util.ArrayList;

public class WordList {
   protected ArrayList<String> words = new ArrayList<String>();
   protected String string;
   protected ArrayList<Character> separator;

   public WordList(String string, char[] separator){
      this.string = string;
      this.separator = new ArrayList<Character>();
      for(int i=0; i<separator.length; i++)
         this.separator.add(separator[i]);
   }

   public void addWords(){
      StringBuilder sb = new StringBuilder();

      for(int i=0; i<string.length(); i++){
         char ch = string.charAt(i);
         if(isSeperator(ch)){
            if(sb.length() != 0)
               words.add(sb.toString());
            sb = new StringBuilder();
         } else {
            sb.append(ch);
         }
      }
   }

   private boolean isSeperator(char ch){
      if(separator.contains(ch))
         return true;
      else
         return false;
   }

   public void printWords(){
      for(String s : words){
         System.out.println(s);
      }
   }
}
