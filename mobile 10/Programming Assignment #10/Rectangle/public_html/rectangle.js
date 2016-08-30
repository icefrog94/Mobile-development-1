/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

   function calcArea(L,W){

     return L*W;

 }

   function calcPerim(L,W) {
     
       return 2*(L+W);

}

    function calc(f){

    var width = parseFloat(f.widthBox.value);

    var length = parseFloat(f.lengthBox.value);

   var area= calcArea (length, width)
   f.areaBox.value = area;
   f.perimeterBox.value = calcPerim(length,width);

}
