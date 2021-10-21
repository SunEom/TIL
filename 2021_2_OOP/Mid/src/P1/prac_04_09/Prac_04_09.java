package P1.prac_04_09;

public class Prac_04_09 {
   public static void main(String[] args){
      String[] arr = {"New York", "Beijing","Seoul"};

      for(int i=0 ;i< arr.length; i++){
         if(arr[i].equals("Seoul")){
            System.out.printf("%d %s",i, arr[i]);
            break;
         }

         if(i == arr.length-1)
            System.out.println("해당 문자열을 찾을 수 없습니다.");
      }
   }
}
