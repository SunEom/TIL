import java.io.File;
import java.util.ArrayList;
import java.util.Scanner;

public class TextFileReaderSepDelimiter extends TextFileReader{
   public TextFileReaderSepDelimiter(String filename) {
      super(filename);
   }

   @Override
   public void readWords() {
      //#2 우선 super.readWords()를 호출하여 words를 생성한 다음
      // TextfileReaderSepDelimiter.readWords에서는 super.words를 순회하며 마지막 문자가 , 또는 . 인지 확인하여 분리하는 과정을 거치면 코드의 중복을 줄일 수 있다.
      super.readWords();
      ArrayList<String> list = super.getWords();

      int size = list.size();
      for(int i=0, count = 0; count < size; count++){
         String word = list.get(i);
         if(word.charAt(word.length() - 1) == '.' || word.charAt(word.length() - 1) == ','){
            list.add(word.substring(0, word.length()-1));
            list.add(word.substring(word.length()-1));
            list.remove(i);
         } else {
            i++;
         }
      }

   }
}
