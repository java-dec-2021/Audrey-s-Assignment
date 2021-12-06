public class Galaxy extends Phone implements Ringable {
    public Galaxy(String versionNumber, int batteryPercentage, String carrier, String ringTone) {
        super(versionNumber, batteryPercentage, carrier, ringTone);
    }
    @Override
    public String ring() {
        String ringString = "Galaxy " + this.getVersionNumber() + " says " + this.getRingTone();
        return ringString;
    }
    @Override
    public String unlock() {
        return "unlocking via finger print";
    }
    @Override
    public void displayInfo() {
        System.out.println("Galaxy " + this.getVersionNumber() + " from " + this.getCarrier());
    }
}

