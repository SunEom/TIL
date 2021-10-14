package ex_04;

public class Seat {
   SeatType type;
   String name;
   int seatNumber;

   public char getType() {
      return type.getType();
   }

   public String getName() {
      return name;
   }

   public int getSeatNumber() {
      return seatNumber;
   }

   Seat(char type, String name, int seatNumber){
      this.type = new SeatType(type);
      this.name = name;
      this.seatNumber = seatNumber;
   }
}
