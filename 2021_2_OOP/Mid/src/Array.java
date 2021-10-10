public class Array {
   public static void main(String[] args){
      int[][] arr = new int[4][4];
      int count = 0;

      for(int i=0; i<4; i++){
         for(int j=0; j<4; j++){
            System.out.printf(arr[i][j]+" ");
         }
         System.out.println();
      }


      while(count <10){
         int i, j;
         do{
            i = (int)(Math.random()*4);
            j = (int)(Math.random()*4);
         }while(arr[i][j]!=0);
         arr[i][j] = (int)(Math.random()*10)+1;
         count++;
      }

      System.out.println();
      for(int i=0; i<4; i++){
         for(int j=0; j<4; j++){
            System.out.printf(arr[i][j]+"\t");
         }
         System.out.println();
      }
   }
}
