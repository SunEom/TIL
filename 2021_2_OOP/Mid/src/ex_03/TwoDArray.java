package ex_03;

public class TwoDArray {
   public static void main(String[] args){
      int[][] darr = new int[4][4];
      int count = 0;

      while(count < 10){
         int i = (int)(Math.random()*4);
         int j = (int)(Math.random()*4);

         if(darr[i][j] == 0){
            darr[i][j] = (int)( Math.random()*10+1);
            count++;
         }
      }

      for(int i=0; i<4; i++){
         for(int j=0; j<4; j++){
            System.out.printf("%3d ",darr[i][j]);
         }
         System.out.println("");
      }
   }
}
