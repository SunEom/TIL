import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class WordsMap {
   public static final int WORD_BEGINNING = -1;
   public static final int WORD_END = -2;
   private Map<Character, Integer> charMap = new HashMap<Character, Integer>();

   public WordsMap() {}
   public void createWordsMapFromList(ArrayList<String> list, int idx){
      for(String s: list) {
         char c;
         if (idx == WORD_BEGINNING)
            c = s.charAt(0);
         else
            c = s.charAt(s.length() - 1);

         if (charMap.containsKey(c)) {
            charMap.put(c, charMap.get(c) + 1);
         } else {
            charMap.put(c, 1);
         }
      }
   }

   public void printMap(){
      Iterator itr = charMap.keySet().iterator();
      int sum = 0;

      while(itr.hasNext()){
         Character key = (Character) itr.next();
         Integer value = (Integer) charMap.get(key);
         sum += value;
         System.out.printf("%c:%d\t",key, value);
      }


      System.out.printf("\nTotal number characters: %d\n",sum);
   }
}
