package Prac12;

public class Sedan implements Vehicle{
    private boolean signalOn;
    private int speed;

    public Sedan(){
        signalOn = false;
        speed = 0;
    }

    @Override
    public void signalTurn(Direction direction, boolean signalOn) {
        String signalStr = signalOn ? "on" : "off";
        String dirStr = direction == Direction.LEFT ? "LEFT" : "RIGHT";

        System.out.printf("%s direction signal %s\n",dirStr, signalStr);
    }

    @Override
    public void changeSpeed(int newSpeed) {
        System.out.printf("changing speed now at %d\n",newSpeed);
    }

    @Override
    public void start() {
        System.out.println("starting....");
        this.signalOn = true;
    }

    @Override
    public void stop() {
        System.out.println("stopping....");
        this.signalOn = false;
    }
}
