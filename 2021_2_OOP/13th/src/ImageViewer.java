import java.util.ArrayList;

public class ImageViewer {
    ArrayList<ImageViewerInterface> iviList;

    ImageViewer(){
        this.iviList = new ArrayList<ImageViewerInterface>();
    }

    void addPlugIn(ImageViewerInterface ivi){
        iviList.add(ivi);
    }

    void show(String fileName, String ext){
        for(ImageViewerInterface i : iviList){
            if(i.getExtension().equals(ext)){
                i.show(fileName);
                return;
            }
        }
        System.out.printf("Image viewer plug in for the extension, %s, is not registered\n",ext);
    }
}
