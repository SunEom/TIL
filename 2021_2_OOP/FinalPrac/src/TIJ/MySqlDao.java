package TIJ;

public class MySqlDao implements DataAccessObject{
   @Override
   public void select() {
      System.out.println("MySql Select");
   }

   @Override
   public void insert() {
      System.out.println("MySql Insert");
   }

   @Override
   public void delete() {
      System.out.println("MySql Delete");
   }
}
