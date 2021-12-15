package Prac06_02;

import Prac06_06.StudentDB;

public class Course {
   final static int MAX_STUDENTS = 30;
   private String lectureName;
   private Lecturer lecturer;
   private String room;
   private Book book;
   private int numEnrolled;
   private Student[] students;

   public Course(String lectureName, Lecturer lecturer, String room, Book book){
      students = new Student[MAX_STUDENTS];
      this.lectureName = lectureName;
      this.lecturer = lecturer;
      this.room = room;
      this.book = book;
      numEnrolled = 0;
   }

   public void SetRoom(String room){
      this.room = room;
   }

   public void enroll(String stNo, String name){
      if(numEnrolled< MAX_STUDENTS)
         students[numEnrolled++] = new Student(stNo, name);
   }

   public void drop(String name){
      int i = 0;
      for(Student s : students){
         if(s.getName().equals(name))
            break;
         i++;
      }

      for(;i<numEnrolled-1; i++)
         students[i] = students[i+1];

      numEnrolled--;
   }

   public int getNumEnrolled(){
      return this.numEnrolled;
   }

   public void printEnrolled(){
      for(Student s : students){
         System.out.println(s);
      }
   }
}
