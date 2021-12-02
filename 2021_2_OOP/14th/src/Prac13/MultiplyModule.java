package Prac13;

public class MultiplyModule implements CalcInterface{
    private int param1, param2;
    @Override
    public String getName() {
        return "Multiply Module";
    }

    @Override
    public String getExpressionString() {
        return param1 + " * "+param2;
    }

    @Override
    public int calculate(int param1, int param2) {
        this.param1 = param1;
        this.param2 = param2;

        return param1 * param2;
    }
}
