package P2.e_04;

public class Song {
   private String title;
   private String artist;
   private String album;
   private String[] composer;
   private int year;
   private int track;

   Song(){}
   Song(String title, String artist, String album, String[] composer, int year, int track){
      this.title = title;
      this.artist = artist;
      this.album = album;
      this.composer = composer;
      this.year = year;
      this.track = track;
   }

   public void show(){
      System.out.println("title : "+title);
      System.out.println("artist : "+artist);
      System.out.println("album : "+album);
      for(int i=0; i<composer.length ;i++)
         System.out.printf("Composer %d : %s\n", i+1, composer[i]);
      System.out.println("year : "+year);
      System.out.println("Track : "+track);
   }

}
