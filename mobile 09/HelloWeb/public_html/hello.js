/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function sayHello(){
 var name = document.getElementById('nameTextField').value;
    if(/^\s*$/.test(name)) {
     var resultString = "Welcome to the Web!";
     document.getElementById('results').innerHTML = resultString;  
    } else {
     var resultString = "Welcome to the Web, " + name + "!";
     document.getElementById('results').innerHTML = resultString;
    }
}

