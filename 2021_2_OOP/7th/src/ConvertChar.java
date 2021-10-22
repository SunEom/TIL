public class ConvertChar {
   static char toUpperCase(char ch){
      if(ch>='a' && ch<='z')
         return (char) (ch - ('a'-'A'));
      else
         return ch;
   }

   static char toLowerCase(char ch){
      if(ch>='a' && ch<='z')
         return ch;
      else
         return (char) (ch + ('a'-'A'));
   }

   public static void main(String[] args){
      System.out.println(ConvertChar.toUpperCase('c'));
      System.out.println(ConvertChar.toUpperCase('C'));

      System.out.println();

      System.out.println(ConvertChar.toLowerCase('c'));
      System.out.println(ConvertChar.toLowerCase('C'));
   }
}
