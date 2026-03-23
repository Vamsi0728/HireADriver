
package HireADriver;

public class Trip {

    private String pickup;
    private String drop;
    private String date;
    private String time;
    private double amount;

    public Trip(String pickup, String drop, String date, String time, double amount) {
        this.pickup = pickup;
        this.drop = drop;
        this.date = date;
        this.time = time;
        this.amount = amount;
    }

    public String getPickup() {
        return pickup;
    }

    public String getDrop() {
        return drop;
    }

    public String getDate() {
        return date;
    }

    public String getTime() {
        return time;
    }

    public double getAmount() {
        return amount;
    }
}
