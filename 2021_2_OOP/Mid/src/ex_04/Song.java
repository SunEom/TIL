package ex_04;

public class Song {
   String title;
   String artist;
   String album;
   String[] composer;
   int year;
   int track;

   Song(){}
   Song(String title, String artist, String album, String[] composer, int year, int track){
      this.title = title;
      this.artist = artist;
      this.album = album;
      this.composer = composer;
      this.year = year;
      this.track = track;
   }

   void show(){
      System.out.println("Title : "+title);
      System.out.println("Artist : "+artist);
      System.out.println("Album : "+album);
      for(int i=0; i<composer.length; i++)
         System.out.println("Composer"+(i+1)+" : "+composer[i]);
      System.out.println("Year : "+year);
      System.out.println("Track number : "+track);
   }
}
