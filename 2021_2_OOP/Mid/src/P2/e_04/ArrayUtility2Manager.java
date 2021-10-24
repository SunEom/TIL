package P2.e_04;

public class ArrayUtility2Manager {
   public static void main(String[] args){
      int[] s1 = {1,45,3,45,23,476};
      int[] s2 = {6,45,723,451,2,34};
      int[] con = ArrayUtility2.concat(s1,s2);

      for(int i=0; i<con.length; i++)
         System.out.println(con[i]);

      int[] rem = ArrayUtility2.remove(s1,s2);


      System.out.println();
      for(int i=0; i<rem.length; i++)
         System.out.println(rem[i]);
   }
}
