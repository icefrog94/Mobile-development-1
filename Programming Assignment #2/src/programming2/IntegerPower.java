/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package programming2;

import java.util.*;


public class IntegerPower {

   
    public static void main(String args[])
    {
        Scanner sc = new Scanner(System.in);
        
        int pow = 0;
        int power = 0;

       for(int i = 1; i < 11; i++)
       {
           
			System.out.print( "For number: "+ i );
                        int a = i;
	
        System.out.print("  Enter power: ");
        pow = sc.nextInt();

        System.out.println(power(a,pow));
    }
    }
    public static int power(int a, int b)
    {
            int power = 1;
            for(int c=0;c<b;c++)
            power*=a;
            return power;
        }
    
}






        
         
 
          
       
      
      
    

       
      
      

    

