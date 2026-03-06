package cm;

public class Mobile {
	
		String brand;
		float price;
		int batterypercentage;
		//constructor
		Mobile(String brand,float price,int batterypercentage){
			this.brand = brand;
			this.price = price;
			this.batterypercentage = batterypercentage;	
		}
		//method
		 void ChargeBattery() {
			 batterypercentage=10;
			 System.out.println("Battery fully charged."); 
			 
		 }
		 void MakeCall() {
			 System.out.println("Battery fully charged");
		 }
		 void displayMobileinfo() {
			 System.out.println("brand:"+brand);
			 System.out.println("price:"+price);
			 System.out.println("Battery:"+batterypercentage+"%");
		 }
		 
		 
		 public static void main(String[]args) {
			 Mobile m = new Mobile("Sumsung",20000,50);
			 m.displayMobileinfo();
			 m.ChargeBattery();
			 m.MakeCall();
		 
		 }
	}


