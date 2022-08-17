package PizzaFactory;

public class NYStyleVeggiePizza extends Pizza {

    public NYStyleVeggiePizza() {
        name = "뉴욕 스타일 야채 피자";
        dough = "씬 크러스트 도우";
        sauce = "마리나라 소스";

        toppings.add("여러 종류의 야채");
        toppings.add("잘게 썬 레지아노 치즈");
    }
}
