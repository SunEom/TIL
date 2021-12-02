package Prac13;

public class Prac13_01 {
    private static AddModule adder;
    private static  MultiplyModule multiplier;
    public static void main(String[] args){
        CPU cpu = new CPU(2,5);
        adder = new AddModule();
        multiplier = new MultiplyModule();

        cpu.calculate(adder);
        cpu.calculate(multiplier);
    }
}
