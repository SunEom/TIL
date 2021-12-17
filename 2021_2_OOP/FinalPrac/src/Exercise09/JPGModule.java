package Exercise09;

public class JPGModule implements ImageViewerInterface{
   @Override
   public String getName() {
      return "JPG Module";
   }

   @Override
   public void show(String fileName) {
      System.out.printf("JPG image loading: %s\n",fileName);
   }

   @Override
   public String getExtension() {
      return "JPG";
   }
}
