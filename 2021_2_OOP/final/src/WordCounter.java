import java.util.HashMap;
import java.util.Iterator;

public class WordCounter extends WordList{
    private String[] stopWord;
    private HashMap<String, Integer>result;
    private String str;

    public WordCounter(String str, String separator, String[] stopWord){
        super(str, separator);
        this.str = str;
        this.stopWord = stopWord;
        result = new HashMap<>();
    }

    public void countWord(){
        String[] separated = str.split(separator);
        for(int i=0; i < separated.length; i++){
            boolean isIn = false;
            for(int j=0; j<stopWord.length; j++)
                if( separated.equals(stopWord[j])){
                    isIn = true;
                    break;
                }

            if(!isIn){
                if(result.containsKey(separated[i]))
                    result.put(separated[i], result.get(separated[i]+1));
                else
                    result.put(separated[i], 1);
            }
        }
    }

    public void printWord(int n){
        Iterator itr = result.keySet().iterator();
        while(itr.hasNext()){
            String key = (String)itr.next();
            System.out.println(key);
            if(result.get(key)>=n)
                System.out.printf("%s:%d\n",key,(int)result.get(key));
        }
    }
}
