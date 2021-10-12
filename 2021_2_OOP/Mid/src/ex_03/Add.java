package ex_03;

public class Add {
   public static void main(String[] args){
      int sum =0;
      for(int i=0 ;i < args.length; i++){
         try{
            int temp = Integer.parseInt(args[i]);
            sum += temp;
         } catch(Exception e){}
      }

      System.out.println(sum);
   }
}
