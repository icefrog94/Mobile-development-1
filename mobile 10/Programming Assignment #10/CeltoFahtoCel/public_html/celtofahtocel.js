/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function convert(degree) {
    if (degree == "C") {
        F = document.getElementById("c").value * 9 / 5 + 32;
        document.getElementById("f").value = (F);
    } else	{
        C = (document.getElementById("f").value - 32) * 5/9;
        document.getElementById("c").value = (C);
    }
}