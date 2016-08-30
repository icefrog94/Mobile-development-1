/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function calculate(){
 var r = document.getElementById('NumberField').value;
 
   
     var resultString = "The area of the Circle is: " + (Math.PI * r * r)
     + "\t The circumference of the Circle is: " + (2 * Math.PI * r);
     document.getElementById('results').innerHTML = resultString;  
    
     
 }


