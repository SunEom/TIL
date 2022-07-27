package StarBuzz;

public class DarkRoast extends Beverage {
    public DarkRoast() {
        description = "다크 로스트 커피";
    }

    @Override
    public String getDescription() {
        return description;
    }

    @Override
    public double cost() {
        Size size = getSize();

        if (size == Size.TALL) {
            return 1.3;
        } else if (size == Size.GRANDE) {
            return 1.5;
        } else if (size == Size.VENTI) {
            return 1.7;
        } else {
            return 0;
        }
    }
}
