package Prac06_04;

import java.time.LocalDateTime;

public class HospitalAppointment {
   private Doctor doctor;
   private Patient patient;
   private LocalDateTime time;

   public HospitalAppointment(String docName, String patientName, LocalDateTime time){
      this.doctor = new Doctor(docName);
      this.patient = new Patient((int)(Math.random()*10000)+1, patientName);
      this.time = time;
   }

   public LocalDateTime getTime() {
      return time;
   }

   @Override
   public String toString() {
      return "의사정보\n"+doctor.toString()+"\n\n 환자정보\n"+patient.toString()+"\n\n 약속시간: "+getTime();
   }
}
