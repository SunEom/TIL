package ExerciseProblem;

public class StackExample {
   public static void main(String[] args){
      MyStack ms = new MyStack();

      ms.push(3);
      ms.print();
      ms.push(5);
      ms.print();
      ms.push(7);
      ms.print();
      ms.push(9);
      ms.print();

      System.out.println("\n\n");

      ms.pop();
      ms.print();
      ms.pop();
      ms.print();
      ms.pop();
      ms.print();
      ms.pop();
      ms.print();

   }
}
