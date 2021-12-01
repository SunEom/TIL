package Prac07;

import Prac03.Franch;
import Prac03.Korean;
import Prac03.Spanish;

public class prac_07 {
    public static void main(String[] args){
        Korean k = new Korean();
        Spanish s = new Spanish();
        Franch f = new Franch();

        k.setToWhom("Suneom");

        k.sayHello();
        s.sayHello();
        f.sayHello();


    }
}
