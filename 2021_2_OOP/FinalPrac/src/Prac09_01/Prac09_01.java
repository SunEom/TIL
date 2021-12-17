package Prac09_01;

import java.util.ArrayList;

public class Prac09_01 {
   private static String[] subject = new String[]{"I","You","A friend of mine"};
   private static String[] verb = new String[]{"play","love","eat"};
   private static String[] etc = new String[]{"a football", "to cook"};

   public static void main(String[] args){
      for(int i=0; i<10; i++){
         StringBuilder sb = new StringBuilder();
         sb.append(subject[(int)(Math.random()*3)]+" ");
         sb.append(verb[(int)(Math.random()*3)]+" ");
         sb.append(etc[(int)(Math.random()*2)]);
         System.out.println(sb);
      }
   }
}
