import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class ExceptionMain {
    public static void main(String[] args) throws FileNotFoundException, IOException{
        try {
            FileReader fr = new FileReader("./noname.txt");
            fr.close();
        } catch(FileNotFoundException e){
            System.out.println("noname.txt 파일이 존재하지 않습니다.");
        } catch(IOException e){
            e.printStackTrace();
        } finally {
            System.out.println("Hello");
        }

//        Integer n = null;
//
//        int number = (int)n;

//        try {
//            FileReader fr = new FileReader("./nooname.txt");
//            fr.close();
//        } catch(Exception e){
//            throw new ArrayIndexOutOfBoundsException();
//        }

//        FileReader fr = new FileReader("./nooname.txt");
//        fr.close();


    }
}
