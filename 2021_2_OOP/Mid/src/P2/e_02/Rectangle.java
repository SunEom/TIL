package P2.e_02;

public class Rectangle {
   public static void isCollied(int x1, int y1, int x2, int y2){
      int xmin = x1 > x2 ? x2 : x1;
      int xmax = x1 > x2 ? x1 : x2;
      int ymin = y1 > y2 ? y2 : y1;
      int ymax = y1 > y2 ? y1 : y2;
      
      for(int x = xmin; x<=xmax ; x++){
         for(int y = ymin; y<=ymax; y++){
            if(x>50 && x<100 && y>50 && y<100){
               System.out.println("서로 충돌합니다.");
               return;
            }
         }
      }
      System.out.println("서로 충돌하지 않습니다.");
   }
}
