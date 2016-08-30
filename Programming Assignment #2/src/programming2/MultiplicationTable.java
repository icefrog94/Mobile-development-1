/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package programming2;


public class MultiplicationTable {

    
    public static void main(String[] args) {
        
     int size = 9;
    displayTable(size);
  }
    
    public static void displayTable(int size){
    System.out.format("      ");
    for(int i = 0; i<=size; i++){
    System.out.format("%4d", i);
    }
    
    System.out.println();
    System.out.println("*****************************************"
            + "*********");
    for(int i =0;i<=size;i++){
    System.out.format("%4d |", i);
    for(int j=0;j<=size;j++){
    System.out.format("%4d", i*j);
    }
     System.out.println();
    }
     
   }
        
  
}
    

