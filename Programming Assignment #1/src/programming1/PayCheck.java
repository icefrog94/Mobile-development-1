
package programming1;
import java.util.Scanner;

public class PayCheck {

    public static void main(String[] args) {
     
     
      double hourlyPayRate;
      double grossPay;
      
      Scanner input = new Scanner(System.in);
      System.out.println("How many hours did you work? ");
      
      double hours = input.nextDouble();
      System.out.print("You get paid $15 per hour:  " + "\n");
      hourlyPayRate = 15;
        
      if (hours > 35) {
         grossPay = (35*hourlyPayRate)+((hours-35)*(hourlyPayRate*1.5));
      }
      else {
         grossPay = (hours * hourlyPayRate);
      }
  
   // Display the results
      System.out.println("Your earnings for this week are: $" + grossPay);
   }
}
   