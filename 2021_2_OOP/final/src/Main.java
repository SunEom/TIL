import java.util.Scanner;

public class Main {
    public static void main(String[] args){
        String[] stopWord = {"to","a","an"};
        String str = "Java is a high-level, class-based, object-oriented programming language that is designed to have as few implementation dependencies as possible. It is a general-purpose programming language intended to let programmers write once, run anywhere (WORA),[17] meaning that compiled Java code can run on all platforms that support Java without";
        char[] separator = {' ', '\t', '\n', ',' , '.' , ':', '(',')','[',']','{','}','\'','\"'};

        Scanner sc = new Scanner(System.in);
        WordCounter wc = new WordCounter(str, separator ,stopWord);
        wc.countWord();

        System.out.printf("몇 회 이상 나타난 단어를 출력할지 입력하세요: ");
        int count = sc.nextInt();

        wc.printWord(count);
    }
}
