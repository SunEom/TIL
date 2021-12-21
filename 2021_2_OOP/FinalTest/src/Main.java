// 201710939 엄태양

import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.Scanner;

public class Main {
    public void createMapAndPrint(TextFileReader reader, int idx) {
        reader.printWords();
        System.out.println("");
        WordsMap map = new WordsMap();
        map.createWordsMapFromList(reader.getWords(), idx);
        map.printMap();
    }

    public static void main(String[] args) {
        final String FILE_NAME = "IpsumTest.txt";
        Main m = new Main();
        TextFileReader reader1 = new TextFileReader(FILE_NAME);
        reader1.readWords();
        TextFileReader reader2 = new TextFileReaderSepDelimiter(FILE_NAME);
        reader2.readWords();

        System.out.println("********* No delimiter, first letter *********");
        m.createMapAndPrint(reader1, WordsMap.WORD_BEGINNING);
        System.out.println("");
        System.out.println("********* Separated delimiters, first letter *********");
        m.createMapAndPrint(reader2, WordsMap.WORD_BEGINNING);
        System.out.println("");
        System.out.println("********* No delimiter, last letter *********");
        m.createMapAndPrint(reader1, WordsMap.WORD_END);
        System.out.println("");
        System.out.println("********* Separated delimiters, last letter *********");
        m.createMapAndPrint(reader2, WordsMap.WORD_END);
    }
}
