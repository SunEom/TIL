package ex_04;

public class Seat {
   char type;
   String name;
   int seatNumber;

   public char getType() {
      return type;
   }

   public String getName() {
      return name;
   }

   public int getSeatNumber() {
      return seatNumber;
   }

   Seat(char type, String name, int seatNumber){
      this.type = type;
      this.name = name;
      this.seatNumber = seatNumber;
   }
}
