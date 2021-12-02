import java.util.ArrayList;

public class WordList {
    protected ArrayList<String> wordList = new ArrayList<>();
    protected String[] separator;

    public WordList(String str, String[] separator){
        this.separator = separator;
        stringToArray(str);
    }

    private void stringToArray(String str){
        String[] temp = str.split(separator[0]);

        for(String s : temp)
            this.wordList.add(s);

    }
}
