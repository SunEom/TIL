package Prac01;

import java.util.ArrayList;

public class prac_01 {
    public static void main(String[] args){
        ArrayList<String> subjectArray = new ArrayList<>();
        ArrayList<String> verbArray = new ArrayList<>();
        ArrayList<String> elseArray = new ArrayList<>();

        subjectArray.add("I");
        subjectArray.add("You");
        subjectArray.add("A friend of mine");

        verbArray.add("play");
        verbArray.add("love");
        verbArray.add("eat");

        elseArray.add("a football");
        elseArray.add("to cook");

        StringBuilder sb;

        for(int i=0; i<3; i++){
            sb = new StringBuilder();
            sb.append(subjectArray.get((int)(Math.random()*3)));
            sb.append(" ");
            sb.append(verbArray.get((int)(Math.random()*3)));
            sb.append(" ");
            sb.append(elseArray.get((int)(Math.random()*2)));

            System.out.println(sb);
        }
    }
}
