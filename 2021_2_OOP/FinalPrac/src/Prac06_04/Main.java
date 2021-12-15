package Prac06_04;

import java.time.LocalDateTime;

public class Main {
   public static void main(String[] args){
      HospitalAppointment[] appointments = new HospitalAppointment[3];

      appointments[0] = new HospitalAppointment("Doctor1", "Patient1", LocalDateTime.now());
      appointments[1] = new HospitalAppointment("Doctor1", "Patient2", LocalDateTime.now());
      appointments[2] = new HospitalAppointment("Doctor1", "Patient3", LocalDateTime.now());

      for(HospitalAppointment h : appointments){
         System.out.println(h);
      }
   }
}
