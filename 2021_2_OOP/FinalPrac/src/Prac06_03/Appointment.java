package Prac06_03;

import java.time.LocalDateTime;

public class Appointment {
   private LocalDateTime time;
   private String personPh;
   private String personName;
   private String placePh;
   private String placeName;

   public Appointment(LocalDateTime time, String personPh, String personName, String placePh, String placeName){
      this.time = time;
      this.personPh = personPh;
      this.personName = personName;
      this.placePh = placePh;
      this.placeName = placeName;
   }

   public LocalDateTime getTime() {
      return time;
   }

   public String getPersonPh() {
      return personPh;
   }

   public String getPersonName() {
      return personName;
   }

   public String getPlacePh() {
      return placePh;
   }

   public String getPlaceName() {
      return placeName;
   }

   @Override
   public String toString(){
      return "시간: "+ getTime() +", 참석자: "+getPersonName() + ", 참석자 전화번호: "+getPersonPh()+", 약속장소: "+getPlaceName()+", 약속장소 전화번호: "+getPlacePh();
   }
}
