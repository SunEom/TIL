package P2.prac_04_09;

public class Prac0409 {
   private static String[] arr = {"New York", "Beijing", "Seoul"};
   
   public static void main(String[] args){
      for(int i=0; i<arr.length ; i++){
         if(arr[i].equals("Seoul")){
            System.out.println(i+" "+arr[i]);
            break;
         }
         if(i == arr.length-1)
            System.out.println("해당 문자열을 찾을 수 없습니다.");
      }

      int index = -1;
      for(String s : arr){
         index++;
         if(s.equals("Seoul")){
            System.out.println(index+" "+s);
            break;
         }
         if(index == arr.length-1)
            System.out.println("해당 문자열을 찾을 수 없습니다.");
      }
   }
}
