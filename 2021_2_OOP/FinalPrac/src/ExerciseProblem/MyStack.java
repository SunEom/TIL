package ExerciseProblem;

import java.util.Iterator;
import java.util.LinkedList;

public class MyStack implements Stack{
   LinkedList<Integer> linkedList = new LinkedList<Integer>();

   @Override
   public Object pop() {
      return linkedList.removeLast();
   }

   @Override
   public boolean push(Object ob) {
      return linkedList.add((Integer)ob);
   }

   public void print(){
      Iterator itr = linkedList.listIterator();
      while(itr.hasNext())
         System.out.println(itr.next());
      System.out.println("\n");
   }
}
