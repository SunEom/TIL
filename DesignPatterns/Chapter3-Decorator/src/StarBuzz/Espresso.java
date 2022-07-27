package StarBuzz;

public class Espresso extends Beverage {
    public Espresso() {
        description = "에스프레소";
    }

    @Override
    public double cost() {
        Size size = getSize();

        if (size == Size.TALL) {
            return 1.5;
        } else if (size == Size.GRANDE) {
            return 1.7;
        } else if (size == Size.VENTI) {
            return 1.8;
        } else {
            return 0;
        }
    }
}
