package Assignment1;

public class DemonstratingReuse {
    protected int reuseInt;
    protected Customer ReuseCustomer;
    protected String name;
	
	public DemonstratingReuse(int reuseInt, Customer ReuseCustomer) {
		this.ReuseCustomer = ReuseCustomer;
		this.reuseInt = reuseInt;
	}
	
	public DemonstratingReuse(String name) {
		this.name = name;
	}
	
	public String toString() {
		return (name == null) ? "DemonstratingReuse reuseInt:" + reuseInt + " ReuseCustomer" + ReuseCustomer : name;
	}
}
