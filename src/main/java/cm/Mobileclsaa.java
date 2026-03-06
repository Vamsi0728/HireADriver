package cm;

public class Mobileclsaa {
  
	String brand;
	float price;
	int batterypercentage;
	//constructor
	Mobileclsaa(String brand,float price,int batterypercentage){
		this.brand = brand;
		this.price = price;
		this.batterypercentage = batterypercentage;	
	}
	//method
	 void ChargeBattery() {
		 batterypercentage=100;
		 System.out.println("Battery fully charged."); 
		 
	 }
	 void MakeCall() {
		 System.out.println("calling from"+brand+"phone..");
	 }
	 void displayMobileinfo() {
		 System.out.println("brand:"+brand);
		 System.out.println("price:"+price);
		 System.out.println("Battery:"+batterypercentage+"%");
	 }
	 
	 
	 public static void main(String[]args) {
		 Mobileclsaa m = new Mobileclsaa("Sumsung",20000,50);
		 m.displayMobileinfo();
		 m.ChargeBattery();
		 m.MakeCall();
	 
	 }
}
 	
