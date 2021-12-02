package Prac12;

public interface Vehicle {
    void signalTurn(Direction direction, boolean signalOn);
    void changeSpeed(int newSpeed);
    void start();
    void stop();
}
