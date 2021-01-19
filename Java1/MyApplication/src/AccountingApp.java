
public class AccountingApp {

	public static void main(String[] args) {
		
		double valueOfSupply = 10000.0;
		double vatRate = 0.1;
		double expenseRate=0.3;
		double vat = valueOfSupply*vatRate;
		
		double total = valueOfSupply + vat;
		double expense = valueOfSupply * expenseRate;
		double income = valueOfSupply - expense;
		
		double dividend1 = 0.5;
		double dividend2 = 0.3;
		double dividend3 = 0.2;
		
		System.out.println("Value of supply : " + valueOfSupply);
		System.out.println("VAT : " + vat );
		System.out.println("Total : " + total );
		
		System.out.println("Expense : " + expense );
		System.out.println("Income : " + income );
		
		System.out.println("Dividend 1 : " + income * dividend1 );
		System.out.println("Dividend 2 : " + income * dividend2 );
		System.out.println("Dividend 3 : " + income * dividend3 );
		
		
	}

}
