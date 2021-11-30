package Prac10;

import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

public class prac_10 {
    public static void main(String[] args){
        HashMap<Character, Integer> charMap = new HashMap<>();
        Scanner sc = new Scanner(System.in);
        String str = sc.nextLine();

        for( int i =0; i<str.length(); i++){
            char ch = str.charAt(i);
            if(charMap.containsKey(ch)){
                charMap.replace(ch, charMap.get(ch)+1);
            } else {
                charMap.put(ch, 1);
            }
        }

//        Iterator<Character> keys = charMap.keySet().iterator();
//
//        while(keys.hasNext()){
//            Character key = keys.next();
//            System.out.printf("key = %c, value = %d\n",key, charMap.get(key));
//        }

//        for(Character ch : charMap.keySet()){
//            System.out.printf("key = %c, value = %d\n", ch, charMap.get(ch));
//        }

        for(Map.Entry<Character, Integer> entry : charMap.entrySet()){
            System.out.printf("key = %c, value = %d\n",entry.getKey(), entry.getValue());
        }
    }
}
