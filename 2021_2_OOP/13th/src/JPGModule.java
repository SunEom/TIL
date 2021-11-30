public class JPGModule implements ImageViewerInterface{
    @Override
    public String getName() {
        return "JPG Module";
    }

    @Override
    public void show(String fileName) {
        System.out.println("Using JPG Module");
        System.out.printf("JPG image lodaing: %s\n", fileName);
    }

    @Override
    public String getExtension() {
        return "JPG";
    }
}
