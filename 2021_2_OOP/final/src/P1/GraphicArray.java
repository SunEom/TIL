package P1;

public class GraphicArray {
    private DObject[] arr = new DObject[3];
    private int count = 0;
    public void add(DObject d){
        arr[count] = d;
        count++;
    }

    public void delete(){
        arr[count] = null;
        count--;
    }

    public void showAll(){
        for(int i=0; i<count; i++)
            arr[i].draw();
    }
}
