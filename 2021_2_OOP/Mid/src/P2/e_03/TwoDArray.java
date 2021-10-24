package P2.e_03;

public class TwoDArray {
   private int[][] arr = new int[4][4];

   TwoDArray(){
      setArr();
   }


   private void setArr(){
      int count = 0;
      int r, c;

      for(count=0; count<8;count++){
         while(true){
            r = (int)Math.floor(Math.random()*4);
            c = (int)Math.floor(Math.random()*4);
            if(arr[r][c] == 0)
               break;
         }

         arr[r][c] = (int)Math.floor(Math.random()*10 +1);
      }
   }


   public void printArr(){
      for(int r=0; r<4;r++){
         for(int c=0; c<4; c++)
            System.out.printf("%d\t",arr[r][c]);
         System.out.println();
      }
   }
}
