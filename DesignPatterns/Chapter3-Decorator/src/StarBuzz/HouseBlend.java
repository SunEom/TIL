package StarBuzz;

public class HouseBlend extends Beverage {
    public HouseBlend() {
        description = "하우스 블렌드 커피";
    }

    @Override
    public double cost() {
        Size size = getSize();

        if (size == Size.TALL) {
            return .89;
        } else if (size == Size.GRANDE) {
            return .95;
        } else if (size == Size.VENTI) {
            return 1.08;
        } else {
            return 0;
        }
    }
}
