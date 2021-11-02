package prac_06_01;

public class PersonalComputer {
   private Computer computer = new Computer();
   private Monitor monitor = new Monitor();

   public void turnOn(){
      computer.turnOn();
      monitor.turnOn();
   }
}
