public class Rectangle {
   double height;
   double width;

   Rectangle(double height, double width){
      this.height = height;
      this.width = width;
   }

   double getArea(){
      return height * width;
   }
}
