package Prac03;

import java.io.FileReader;

public class Prac03 {
    public static void main(String[] args){
        try{
            FileReader fr = new FileReader("./hello.txt");
            int data = fr.read();
            while(data != -1){
                System.out.printf("%c", Character.toLowerCase((char)data));
                data = fr.read();
            }
        } catch(Exception e){
            e.printStackTrace();
        }
    }
}
