package Prac03;

import java.util.ArrayList;
import java.util.Iterator;

public class prac_03 {
    public static void main(String[] args){
        ArrayList<Integer> arrayList = new ArrayList<>();
        int result = 0;
        for(int i=1; i<=100; i++)
            if (i%4 == 0 && i% 5!=0)
                arrayList.add(i);

        Iterator itr = arrayList.iterator();
        while(itr.hasNext()){
            System.out.println(result);
            result += (int) itr.next();
        }

        System.out.printf("Result: %d\n",result);
    }
}
