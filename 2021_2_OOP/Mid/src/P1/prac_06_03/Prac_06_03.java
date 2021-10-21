package P1.prac_06_03;

import java.time.LocalDateTime;

public class Prac_06_03 {
   public static void main(String[] args){
      LocalDateTime d = LocalDateTime.of(2021,10,22,01,00);
      Person person = new Person("111-1111-1111","cho");
      Place place = new Place("222-2222-2222","jongro");
      Appointment appointment = new Appointment(d, person, place);

      System.out.println(appointment.toString());

   }
}
