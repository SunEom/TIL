package Prac13;

public class CPU {
    private int param1, param2;


    public CPU(int param1, int param2){
        this.param1 = param1;
        this.param2 = param2;

    }

    public void calculate(CalcInterface aci){
        int result = aci.calculate(param1, param2);

        System.out.printf("Using %s...\n",aci.getName());
        System.out.printf("%s Result: %d\n",aci.getExpressionString(), result);
    }
}
