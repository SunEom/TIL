package Prac12;

public class Prac12 {
    public static void main(String[] args){
        Sedan sedan = new Sedan();

        sedan.start();
        sedan.changeSpeed(10);
        sedan.changeSpeed(20);
        sedan.changeSpeed(30);

        sedan.signalTurn(Direction.LEFT, true);
        sedan.signalTurn(Direction.RIGHT, true);

        sedan.stop();
    }
}
