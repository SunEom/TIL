import java.io.File;
import java.util.ArrayList;
import java.util.Scanner;

public class TextFileReader {
   private ArrayList<String> words = new ArrayList<String>();
   String filename;

   public TextFileReader(String filename) {
      this.filename = filename;
   }

   public ArrayList<String> getWords() {
      return this.words;
   }

   public String getFilename() {
      return filename;
   }

   public void readWords(){
      try{
         Scanner sc = new Scanner(new File("./src/"+filename));
         while(sc.hasNext()){
            words.add(sc.next());
         }
      } catch(Exception e){
         e.printStackTrace();
      }
   }

   public void printWords(){
      System.out.printf("Total number of words: %d\n",words.size());
      for(int i=0; i<words.size()-1; i++){
         System.out.printf("\"%s\", ",words.get(i));
      }
      System.out.printf("\"%s\"\n",words.get(words.size()-1));
   }
}
