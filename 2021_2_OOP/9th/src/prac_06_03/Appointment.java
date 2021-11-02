package prac_06_03;

import java.time.LocalDateTime;

public class Appointment {
   LocalDateTime time;
   Person person;
   Place place;

   public Appointment(LocalDateTime time, Person person, Place place){
      this.time = time;
      this.person = person;
      this.place = place;
   }

   public String toString(){ return this.time.toString()+ " " + this.person.getName() + " " + this.place.getName(); }
}
