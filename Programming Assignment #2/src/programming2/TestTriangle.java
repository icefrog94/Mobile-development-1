/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package programming2;

import java.util.Scanner;




public class TestTriangle {
    
  
    private double height;
    private double hypotenuse;
    private double base;

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.println("Enter three sides of the Triangle");
        double height = input.nextDouble();
        double hypotenuse = input.nextDouble();
        double base = input.nextDouble();
        
        Triangle tri = new Triangle (height, hypotenuse, base);
        System.out.println("The Triangle Sides are \n Side 1: " + height + "\n Side 2: " + hypotenuse + "\n Side 3: " + base);
        System.out.println("Area: " + tri.getArea());
        System.out.println("Perimeter: " + tri.getPerimeter());
                          
      }
}
