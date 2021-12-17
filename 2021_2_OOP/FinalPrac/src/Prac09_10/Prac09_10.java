package Prac09_10;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Scanner;

public class Prac09_10 {
   public static Map<Character, Integer> result = new HashMap<>();

   public static void main(String[] args){
      Scanner sc = new Scanner(System.in);
      System.out.printf("Enter a String: ");

      String str = sc.nextLine();

      for(int i=0; i<str.length(); i++){
         char ch = str.charAt(i);
         Integer value = result.get(ch);
         if(result.containsKey(ch)){
            result.replace(ch, value+1);
         } else {
            result.put(ch, 1);
         }
      }

      Iterator itr = result.keySet().iterator();

      while(itr.hasNext()){
         Character key = (Character) itr.next();
         System.out.printf("%c: %d\n",key, result.get(key));
      }

   }
}
