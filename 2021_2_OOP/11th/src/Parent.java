public class Parent {
   private int n = 3;
   public void print(){
      System.out.printf("n = %d\n",n);
   }
   private void privatePrint(){
      System.out.printf("n = %d\n",n);
   }

   public void setN(int n){
      this.n = n;
   }

   public int getN(){
      return this.n;
   }
}
