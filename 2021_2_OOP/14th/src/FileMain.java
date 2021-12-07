import java.io.*;
import java.util.Formatter;
import java.util.Scanner;

public class FileMain {
    public static void main(String[] args){
//        StringBuilder sb = new StringBuilder();
//
//        Formatter formatter = new Formatter(sb);
//
//        formatter.format("Hello %s", "ycho");
//
//        System.out.println(sb.toString());
//        System.out.println(formatter.toString());

        System.out.println("FileInputStream");
        try {
            FileInputStream fs = new FileInputStream("/Users/eomtaeyang/Documents/hello.txt");
            Scanner sc = new Scanner(fs);
            while(sc.hasNext()){
                System.out.println(sc.next());
            }
            sc.close();
        } catch (Exception e){
            e.printStackTrace();
        }

        System.out.println("\n\n");
        System.out.println("File");

        try {
            Scanner sc = new Scanner(new File("/Users/eomtaeyang/documents/hello.txt"));
            while(sc.hasNextLine()){
                System.out.println(sc.nextLine());
            }
            sc.close();
        } catch(Exception e){
            e.printStackTrace();
        }

        System.out.println("\n\nFileInputStream");

        try {
            FileInputStream fs = new FileInputStream("./hello.txt");
            int data = fs.read();
            while(data != -1){
                System.out.printf("%c",data);
                data = fs.read();
            }
            fs.close();
        } catch(Exception e){
            e.printStackTrace();
        }


        System.out.println("\n\nFileReader");

        try {
            FileReader fr = new FileReader("./hello.txt");
            int data = fr.read();
            while(data != -1){
                System.out.printf("%c",data);
                data = fr.read();
            }
            fr.close();
        } catch(Exception e){
            e.printStackTrace();
        }

        System.out.println("\n\nBufferedReader");

        try{
            BufferedReader br = new BufferedReader(new FileReader("./hello.txt"));

            int data = br.read();

            while(data != -1){
                System.out.printf("%c",data);
                data = br.read();
            }
            br.close();

            System.out.println("\n\nreadLine");

            BufferedReader br2 = new BufferedReader(new FileReader("./hello.txt"));

            String line = br2.readLine();

            while(line != null){
                System.out.println(line);
                line = br2.readLine();
            }

            br2.close();
        } catch(Exception e){
            e.printStackTrace();
        }

        System.out.println("\n\nFileOutputStream");

        try {
            String str = "Hello World!";

            FileOutputStream fo = new FileOutputStream("./newHello.txt");
            for(int i=0; i<str.length(); i++){
                char ch = str.charAt(i);
                fo.write(ch);
            }
            fo.close();
        } catch(Exception e){
            e.printStackTrace();
        }
    }
}
