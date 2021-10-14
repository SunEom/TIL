package ex_05;

public class StringStack implements Stack{
   String[] stack = new String[100];
   int top = -1;

   public int length() {
      return top+1;
   }

   public Object pop() {
      if(top == -1){
         System.out.println("Stack이 비어있습니다.");
         return null;
      }
      Object item = stack[top];
      top--;
      return item;
   }

   public Boolean push(Object ob) {
      if(top == 99) return false;
      stack[++top] = (String) ob;
      return true;
   }

   public static void main(String[] args){
      StringStack stack = new StringStack();
      stack.push("Hello, world");
      System.out.println(stack.pop());
   }
}
