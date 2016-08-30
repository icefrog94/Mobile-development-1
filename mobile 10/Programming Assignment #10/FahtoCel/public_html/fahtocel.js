/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



function findCelsius(){
var fahrenheit = document.getElementById("fahrenheit").value;
var celsius;
 if(fahrenheit != ''){
 celsius = (fahrenheit - 32) * 5/9;
document.getElementById("results").innerHTML = celsius;
}else{
document.getElementById("results").innerHTML = "Please enter a value!";
}

 }
