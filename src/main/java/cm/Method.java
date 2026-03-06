package cm;

public class Method {
	
	    String name;
	    int rollNo;
	    double marks;

	    // Constructor
	    Method(String name, int rollNo, double marks) {
	        this.name = name;
	        this.rollNo = rollNo;
	        this.marks = marks;
	    }

	    // Method to calculate grade
	    char calculateGrade() {
	        if (marks >= 90) return 'A';
	        else if (marks >= 75) return 'B';
	        else if (marks >= 50) return 'C';
	        else return 'F';
	    }

	    // Method to display details
	    void displayDetails() {
	        System.out.println("Name: " + name);
	        System.out.println("Roll No: " + rollNo);
	        System.out.println("Marks: " + marks);
	        System.out.println("Grade: " + calculateGrade());
	    }

	    public static void main(String[] args) {
	       Method s = new Method("Ravi", 101, 85);
	        s.displayDetails();
	    }
	}
	

