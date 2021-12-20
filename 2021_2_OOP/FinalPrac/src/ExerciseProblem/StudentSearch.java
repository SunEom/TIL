package ExerciseProblem;

import java.util.Hashtable;
import java.util.Iterator;

public class StudentSearch {
   private Hashtable dept = new Hashtable<String, Student>();

   public void add(Student s){
      dept.put(s.getStNo(), s);
   }

   public Student search(String stNo){
      Iterator itr = dept.keySet().iterator();

      Student result = null;

      while(itr.hasNext()){
         Student temp = (Student) dept.get((String)itr.next());
         if(temp.getStNo().equals(stNo)){
            result = temp;
            break;
         }
      }

      return result;
   }
}
