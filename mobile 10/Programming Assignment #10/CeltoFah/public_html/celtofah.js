/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function findFahrenheit(){
var celsius = document.getElementById("celsius").value;
var fahrenheit;
 if(celsius != ''){
 fahrenheit = celsius * 9/5 + 32;
document.getElementById("results").innerHTML = fahrenheit;
}else{
document.getElementById("results").innerHTML = "Please enter a value!";
}

 }