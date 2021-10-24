package P2.e_04;

public class ArrayUtility2 {
   public static int[] concat(int[] s1, int[] s2){
      int[] result = new int[s1.length+s2.length];

      for(int i=0;i<s1.length;i++)
         result[i] = s1[i];

      for(int i=0;i<s2.length; i++)
         result[s1.length+i] = s2[i];

      return result;
   }

   public static int[] remove(int[] s1, int[] s2){
      int[] result = new int[s1.length];
      int index = 0;
      for(int i=0; i<s1.length; i++){
         for(int j=0; j<s2.length; j++){
            if(s2[j] == s1[i])
               break;
            if(j == s2.length-1){
               result[index]= s1[i];
               index++;
            }
         }
      }
      return result;
   }
}
