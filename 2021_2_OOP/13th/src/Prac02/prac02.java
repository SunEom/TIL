package Prac02;

public class prac02 {
    public static void main(String[] args){
        String word = "hello";

        StringBuilder sb = new StringBuilder();

        for(int i=word.length()-1; i>=0;i--){
            sb.append(word.charAt(i));
        }

        System.out.println(sb);

        sb = new StringBuilder();

        char[] charArr = word.toCharArray();

        for(int i = charArr.length-1; i>=0 ;i--)
            sb.append(charArr[i]);

        System.out.println(sb);
    }
}
