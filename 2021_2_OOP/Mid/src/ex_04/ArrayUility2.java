package ex_04;

public class ArrayUility2 {
   static int[] concat(int[] s1, int[] s2){
      int[] temp = new int[s1.length+s2.length];
      int i=0;

      for(;i<s1.length;i++)
         temp[i] = s1[i];

      for(i=0; i<s2.length;i++)
         temp[i+s1.length] = s2[i];

      return temp;
   }

   static int[] remove(int[] s1, int[] s2){
      int[] temp = new int[s1.length+s2.length];
      int idx = 0;
      for(int i=0; i<s1.length ;i++){

         for(int j=0 ; j<s2.length; j++){
            if(s2[j] == s1[i])
               break;
            if(j == s2.length-1)
               temp[idx++] = s1[i];
         }
      }

      return temp;
   }
}
