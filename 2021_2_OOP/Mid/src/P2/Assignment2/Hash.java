package P2.Assignment2;

public class Hash {
   public static double calcHash(char[] chArr){
      double hash = 0;
      for(int i=0; i<chArr.length ; i++){
         hash += chArr[i]* Math.pow(31,chArr.length-1-i);
      }
      return hash;
   }
}
