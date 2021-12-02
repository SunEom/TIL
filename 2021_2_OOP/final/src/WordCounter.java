import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class WordCounter extends WordList{
    private String[] stopWord;
    private HashMap<String, Integer>result;
    private String str;

    public WordCounter(String str, char[] separator, String[] stopWord){
        super(str, separator);
        this.str = str;
        this.stopWord = stopWord;
        result = new HashMap<>();
    }

    public void countWord(){
        super.stringToArray(str);
        for(String word : wordList){
            if(result.containsKey(word)){
                result.put(word, result.get(word)+1);
            } else {
                result.put(word, 1);
            }
        }
    }

    public void printWord(int n){
        Iterator itr = result.keySet().iterator();
        while(itr.hasNext()){
            String key = (String)itr.next();
            if(result.get(key)>=n)
                System.out.printf("%s:%d\n",key,(int)result.get(key));
        }
    }
}
