
package programming1;

    

public class PayRate {
    
    
    private double hoursWorked;
    private double hourlyPayRate;
    
    
    public PayRate() {
        
    }

    
    public PayRate( double hw, double hpr){
      
        this.hoursWorked = hw;
        this.hourlyPayRate = hpr;
        
    }

    
    public double getHoursWorked() {
        return hoursWorked;
    }
 
 
    public void setHoursWorked(double hoursWorked) {
        this.hoursWorked = hoursWorked;
    }
 
 
    public double getHourlyPayRate() {
        return hourlyPayRate;
    }
 
 
    public void setHourlyPayRate(double hourlyPayRate) {
        this.hourlyPayRate = hourlyPayRate;
    }
    
    public double grossPay(double hourlyRate, double hoursWorked) {
   
        double payAmount = 0.0;
        int hourlyWage = 15;
        if(hoursWorked>35){
            payAmount = (35*hourlyPayRate)+((hoursWorked-35)*(hourlyPayRate*1.5));
        }
        else{
            payAmount = hoursWorked * hourlyWage;
        }
        
        
       
        return payAmount;
    }
    
 }
    
    

