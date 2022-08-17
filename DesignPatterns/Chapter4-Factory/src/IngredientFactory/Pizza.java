package IngredientFactory;

public abstract class Pizza {
    String name;

    Dough dough;
    Sauce sauce;
    Veggies veggies[];
    Cheese cheese;
    Clams clams;

    abstract void prepare();

    void bake() {
        System.out.println("175도에서 25분간 구워줍니다.");
    }
    void cut() {
        System.out.println("사선으로 잘라줍니다.");
    }
    void box() {
        System.out.println("상자에 피자를 담아줍니다.");
    }

    void setName(String name) {
        this.name = name;
    }

    String getName() {
        return name;
    }
}
