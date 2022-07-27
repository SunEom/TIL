package StarBuzz;

public class Soy extends CondimentDecorator {
    public Soy(Beverage beverage){
        this.beverage = beverage;
    }

    @Override
    public String getDescription() {
        return this.beverage.getDescription() + " 두유";
    }

    @Override
    public double cost() {
        Double cost = beverage.cost();
        Size size = getSize();

        if ( size == Size.TALL) {
            cost += .10;
        } else if ( size == Size.GRANDE) {
            cost += .15;
        } else if ( size == Size.VENTI) {
            cost += .23;
        }

        return cost;

    }
}
