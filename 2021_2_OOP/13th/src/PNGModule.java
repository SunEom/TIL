public class PNGModule implements ImageViewerInterface{
    @Override
    public String getName() {
        return "PNG Module";
    }

    @Override
    public void show(String fileName) {
        System.out.println("Using PNG Module");
        System.out.printf("PNG image loading: %s\n", fileName);
    }

    @Override
    public String getExtension() {
        return "PNG";
    }
}
