package Prac02;

import java.io.File;
import java.util.Scanner;

public class Prac02 {
    public static void main(String[] args){
        try {
            Scanner sc = new Scanner(new File("hello.txt"));
            while(sc.hasNextLine()){
                System.out.println(sc.nextLine());
            }
            sc.close();
        } catch (Exception e){
            e.printStackTrace();
        }
    }
}
