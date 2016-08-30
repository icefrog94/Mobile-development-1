/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



function calcSalary() { 
  var hours = parseInt(document.getElementById("hours").value, "10.0"); 
  var salary = parseInt(document.getElementById("salary").value, "10.0"); 
  if (hours > 40.0){ 
    regtime = (salary * 40.0); 
    overtime = ((salary * 1.5) * (hours - 40.0)) 
  }else{ 
    regtime = salary * hours 
    overtime = 0.0; 
  } 
  salary = (regtime + overtime) 
  pay.innerHTML = " Total Salary = $" + salary; 
}
    
     
 