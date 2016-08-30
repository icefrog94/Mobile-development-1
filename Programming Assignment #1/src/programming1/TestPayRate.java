=
package programming1;
import java.util.*;

/**
 *
 * 
 */
public class TestPayRate {
    
    public static void main(String[] args) {
        
        
        Scanner input =  new Scanner(System.in);
        PayRate data = new PayRate();
 
        System.out.println("Number of Hours Worked: ");
        data.setHoursWorked(Double.parseDouble(input.next()));
 
        System.out.println("Hourly Pay Rate: ");
        data.setHourlyPayRate(Double.parseDouble(input.next()));
 
        double grossAmount = data.grossPay(data.getHourlyPayRate(), data.getHoursWorked());
 
        System.out.println();
        System.out.println("------------------------------------");
        System.out.println("Hours Worked: " + data.getHoursWorked() + " hrs");
        System.out.println("Pay Rate: $" + data.getHourlyPayRate());
        System.out.println("Gross Pay: $" + grossAmount + '\n');
        
        input.close();
    }
    
}
