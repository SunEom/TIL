package TIJ;

public class DaoExample {
   public static void dbWork(DataAccessObject dao){
      dao.select();
      dao.insert();
      dao.select();
      dao.delete();
   }

   public static void main(String[] args){
      dbWork(new OracleDao());
      dbWork(new MySqlDao());
   }
}
