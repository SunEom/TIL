package P1.prac_06_03;

import java.time.LocalDateTime;

public class Appointment {
   private LocalDateTime time;
   private Person person;
   private Place place;

   Appointment(LocalDateTime time, Person person, Place place){
      this.time = time;
      this.person = person;
      this.place = place;
   }

   public String toString(){
      return "DateTime : " + time.toString() +"\nPerson : "+person.toString() +"\nPlace : "+place.toString();
   }
}
