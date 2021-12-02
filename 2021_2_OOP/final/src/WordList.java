import java.io.BufferedReader;
import java.io.Reader;
import java.util.ArrayList;

public class WordList {
    protected ArrayList<String> wordList = new ArrayList<>();
    protected char[] separator;

    public WordList(String str, char[] separator){
        this.separator = separator;
        stringToArray(str);
    }

    protected void stringToArray(String str){
        String temp = "";
        for(int i=0; i<str.length(); i++){
            char now = str.charAt(i);
            boolean isSeparator = false;
            for(char s : separator){
                if(now == s)
                    isSeparator = true;
            }
            if(isSeparator){
                wordList.add(temp);
                temp = "";
            }
            else{
                temp += now;
            }
        }
    }
}
