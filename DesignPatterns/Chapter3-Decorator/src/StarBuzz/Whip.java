package StarBuzz;

public class Whip extends CondimentDecorator {
    public Whip(Beverage beverage) {
        this.beverage = beverage;
    }

    @Override
    public String getDescription() {
        return this.beverage.getDescription() + " 휘핑크림";
    }

    @Override
    public double cost() {
        Double cost = beverage.cost();
        Size size = getSize();

        if ( size == Size.TALL) {
            cost += .13;
        } else if ( size == Size.GRANDE) {
            cost += .15;
        } else if ( size == Size.VENTI) {
            cost += .17;
        }

        return cost;
    }
}
