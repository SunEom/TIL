package StarBuzz;

public class Mocha extends CondimentDecorator {
    public Mocha(Beverage beverage) {
        this.beverage = beverage;
    }

    @Override
    public String getDescription() {
        return this.beverage.getDescription() + " 모카";
    }

    @Override
    public double cost() {
        Double cost = beverage.cost();
        Size size = getSize();

        if ( size == Size.TALL) {
            cost += .15;
        } else if ( size == Size.GRANDE) {
            cost += .19;
        } else if ( size == Size.VENTI) {
            cost += .23;
        }

        return cost;
    }
}
