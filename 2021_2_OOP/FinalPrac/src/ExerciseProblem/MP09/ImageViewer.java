package ExerciseProblem.MP09;

import java.util.ArrayList;

class ImageViewer{

   ArrayList<ImageViewerInterface> list;
   // 필요한 멤버 변수 선언
// ImageViewerInterface를 구현한 클래스의 객체를
// 담을 수 있는 ArrayList 초기화
   public ImageViewer(){
      list = new ArrayList<ImageViewerInterface>();
   }
   // ImageViewerInterface를 구현한 클래스의 객체를
// ArrayList에 추가
   void addPlugIn(ImageViewerInterface ivi){
      list.add(ivi);
   }
   // 이미지 파일 이름과 확장자에 해당되는 인자를 받아서
// 배열에서 해당되는 확장자를 처리할 수 있는 객체를
// 찾아서 처리. 만약 플러그인을 찾지 못하면, "Image
// viewer plugin for the extension, ???, is not
// registered"를 출력할 것. ???는 확장자
   void show(String fileName, String ext){
      for(ImageViewerInterface ivi : list){
         if(ivi.getExtension().equals(ext)){
            System.out.printf("Using %s\n", ivi.getName());
            ivi.show(fileName);
            return;
         }
      }
      System.out.printf("Image viewer plugin for the extension, %s, is not registered",ext);
   }
}
