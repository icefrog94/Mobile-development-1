/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package programming2;


public class DisplaySquare {

   
    public static void main(String[] args) {
        
        int size =10 ;
      displaySquare(size);
   }
    public static void displaySquare(int size){
        if (size > 1) {
            displaySquare(size - 1);
        }
        System.out.println(size * size);
    }

        
  }
    

