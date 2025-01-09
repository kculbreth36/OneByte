package Business;
import java.sql.*;
// Order class used to create, edit, delete, show list of orders. 
public class Order {
    // private variables for order class
    private String orderNum;
    private String amount;
    private String status;
    private String custID;
    private String custEmail;
    private String approverID;
    private String dateOfApproval;
    private String street;
    private String city;
    
    // list to show order items
    public OrderList aList = new OrderList();

    // default constructor for order class
    public Order() {
        orderNum = "";
	amount = "";
	status = "";
	custID = "";
        custEmail = "";
	approverID = "";
	dateOfApproval = "";
	street = "";
	city = "";
    }
    // customer constructor for order class
    public Order(String orderNum, String amount, String status, String custID, String custEmail, String approverID,
		         String dateOfApproval, String street, String city) {

	this.orderNum = orderNum;
        this.amount = amount;
	this.status = status;
        this.custID = custID;
        this.custEmail = custEmail;
	this.approverID = approverID;
	this.dateOfApproval = dateOfApproval;
        this.street = street;
	this.city = city;
    }
    // set and get methods for all variables
    public void setOrderNum(String orderNum) {
	this.orderNum = orderNum;
    }

    public String getOrderNum() {
	return orderNum;
    }

    public void setAmount(String amount) {
	this.amount = amount;
    }

    public String getAmount() {
	return amount;
    }

	public void setStatus(String status) {
		this.status = status;
	}

	public String getStatus() {
		return status;
	}

	public void setCustID(String custID) {
		this.custID = custID;
	}

	public String getCustID() {
		return custID;
	}
        
        public void setCustEmail(String custEmail) {
		this.custEmail = custEmail;
	}

	public String getCustEmail() {
		return custEmail;
	}

	public void setApproverID(String approverID) {
		this.approverID = approverID;
	}

	public String getApproverID() {
		return approverID;
	}

	public void setDateOfApproval(String dateOfApproval) {
		this.dateOfApproval= dateOfApproval;
	}

	public String getDateOfApproval() {
		return dateOfApproval;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getStreet() {
		return street;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getCity() {
		return city;
	}



        // Method used to select all Open Orders for display
	public void selectDB() {
    	
            try {
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            // My connection to connect to DB
                try (Connection connect = DriverManager.getConnection("jdbc:ucanaccess://C:/Users/matth/Documents/TeamOneByte/PizzaCompanyDB.mdb")) // will have to change this directory to yours!!
                {
                    Statement statement = connect.createStatement();
                
                    String sql;
                    sql = "SELECT * FROM Order WHERE Status = 'Open'";
                    //System.out.println(sql);
                
                    ResultSet result = statement.executeQuery(sql);
                    
                    while (result.next()) {
                    orderNum = result.getString(1);
                    amount = result.getString(2);
                    status = result.getString(3);
                    custID = result.getString(4);
                    approverID = result.getString(5);
                    dateOfApproval = result.getString(6);   
                    street = result.getString(7);
                    city = result.getString(8);
                    Order o2 = new Order(orderNum,amount,status,custID,custEmail,approverID,dateOfApproval,street,city);
                    aList.addOrder(o2);
                   
                }
            }       
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println(e);
        }
    }
    
    // method to select individual Order records to Update
    public void selectDB2(String id) {
    	
            try {
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            // My connection to connect to DB, still need to figure out how to do in GitHub
                try (Connection connect = DriverManager.getConnection("jdbc:ucanaccess://C:/Users/matth/Documents/TeamOneByte/PizzaCompanyDB.mdb")) // will have to change this directory to yours!!
                {
                    Statement statement = connect.createStatement();
                
                    String sql;
                    sql = "SELECT * FROM Order WHERE CustEmail = '"+id+"'";
                    //System.out.println(sql);
                
                    ResultSet result = statement.executeQuery(sql);
                    
                    result.next();
                    orderNum = result.getString(1);
                    amount = result.getString(2);
                    status = result.getString(3);
                    custID = result.getString(4);
                    custEmail = result.getString(5);
                    approverID = result.getString(6);
                    dateOfApproval = result.getString(7);   
                    street = result.getString(8);
                    city = result.getString(9);
            }       
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println(e);
        }
    }
    // add a new order into db
 public void insertDB(int orderNum, String amount, String status, String custID, String custEmail, String approverID, String dateOfApproval, String street, String city) {
    try {
        Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
        
        try (Connection connect = DriverManager.getConnection("jdbc:ucanaccess://C:/Users/matth/Documents/TeamOneByte/PizzaCompanyDB.mdb"))// will have to change this directory to yours!!
        {
            // List all column names explicitly
            String sql = "INSERT INTO Order (OrderNumber, Amount, Status, CustId, CustEmail, ApproverId, DateOfApproval, Street, City) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement prepstate = connect.prepareStatement(sql);
            prepstate.setInt(1, orderNum);
            prepstate.setString(2, amount);
            prepstate.setString(3, status);
            prepstate.setString(4, custID);
            prepstate.setString(5, custEmail);
            prepstate.setString(6, approverID);
            prepstate.setString(7, dateOfApproval);
            prepstate.setString(8, street);
            prepstate.setString(9, city);
            prepstate.executeUpdate();
            
            this.orderNum = String.valueOf(orderNum);
            this.amount = amount;
            this.status = status;
            this.custID = custID;
            this.custEmail = custEmail;
            this.approverID = approverID;
            this.dateOfApproval = dateOfApproval;
            this.street = street;
            this.city = city;
        }  
    } catch(SQLException | ClassNotFoundException ex) {
        System.out.println("Error: " + ex);
    }
}

    // update a order in the database
    public void updateDB() {
        try {
            
            Connection connect = DriverManager.getConnection("jdbc:ucanaccess://C:/Users/matth/Documents/TeamOneByte/PizzaCompanyDB.mdb");// will have to change this directory to yours!!
            String sql;
            sql = "UPDATE Order SET OrderNumber = '"+orderNum+"', Amount = '"+amount+"', Status = '"+status+"', CustId = '"+custID+"', CustEmail = '"+custEmail+"', ApproverId = '"+approverID+"', DateOfApproval = '"+dateOfApproval+"', Street = '"+street+"', City = '"+city+"' WHERE OrderNumber = '"+orderNum+"'";
            PreparedStatement pstmt = connect.prepareStatement(sql);
            pstmt.executeUpdate();
        
        } catch(SQLException e) {
            System.out.println("Error: " + e);
        }
    }
    // delete a record in db
    public void deleteDB() {

    }
  
    // test order records being pulled from db
    public void display() {
    	System.out.println("Order Number: " + orderNum);
    	System.out.println("Amount Due: " + amount);
    	System.out.println("Status " + status);
    	System.out.println("Customer ID: " + custID);
        System.out.println("Customer Email: " +custEmail);
    	System.out.println("Approver ID: " + approverID);
    	System.out.println("Date Approved: " + dateOfApproval);
    	System.out.println("Street: " + street);
    	System.out.println("City: " + city);
    	
        
        aList.displayList();

    }

    // Test methods and see if we are connected to DB
    public static void main(String args[] ) {
    	Order o1 = new Order();
        o1.selectDB2("LindaB@BobsBurgers.com");
        o1.display();
         
        Order o2 = new Order();
        o2.insertDB(5,"27.75", "Open", "5", "tester.com","", "","605 Crescent Street","Stockbridge");
        o2.display();
    }

}
