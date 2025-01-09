package Business;
import java.util.ArrayList;

// Used to show a list of orders
public class OrderList {

	public int count;

	public ArrayList<Order> aList = new ArrayList<Order>();

	public void addOrder(Order o1) {
		aList.add(count,o1);
		count++;
	}

	public void displayList() {
		for (int x = 0; x < aList.size(); x++) {
			aList.get(x).display();
		}
	}

	public static void main(String args[]) {
	
	}
}