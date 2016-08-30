/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var score = 0;
var aWidth;
var aHeight;
var timer;
var timerEnd;
var timeShow = 30;
var level;
function detectHit(){
 if(timeShow === 30){
     score = 0;           
 } else if(timeShow === 0){
     score = 0;
 } else {
 score += 1;
 document.getElementById('scoreLabel').innerHTML = "Score: " + score;
 }
}
function setGameAreaBounds(){
 if(document.all){
 aWidth = document.body.clientWidth;
 aHeight = document.body.clientHeight;
 }else{
 aWidth = innerWidth;
 aHeight = innerHeight;
 }
 aWidth -= 30;
 aHeight -= 95;
 document.getElementById("gameArea").style.width = aWidth + 'px';
 document.getElementById("gameArea").style.height = aHeight + 'px';
 aWidth -= 74;
 aHeight -= 74;
 moveDot();
}
function moveDot(){
 var x = Math.floor(Math.random()*aWidth);
 var y = Math.floor(Math.random()*aHeight);
 if(x<10)
 x = 10;
 if(y<10)
 y = 10;
 document.getElementById("dot").style.left = x + 'px';
 document.getElementById("dot").style.top = y + 'px';
}
function stopTimer(){
    clearTimeout(timer);
    clearTimeout(timerEnd);
    score = 0;
}
function timerSeconds(){
    clearTimeout(timerEnd);
    // timeShow = 30;
    timerEnd = setTimeout("timerSeconds()", 1000);
    timeShow -= 1;
    document.getElementById('timeLabel').innerHTML = "Time: " + timeShow;
    document.getElementById('gameEnded').innerHTML = null;
    if(timeShow <= 0){
        timeShow = 0;
        stopTimer();
        document.getElementById('gameEnded').innerHTML = "Game Has Ended";
    }
}
function gameStart(){
    moveDot();  
    clearTimeout(timer);
    if(level === 1){
    timer = setTimeout("gameStart()",1250);
    } else if(level === 2){
        timer = setTimeout("gameStart()",900);
    } else if(level === 3){
        timer = setTimeout("gameStart()",750);
    }
}
function gameEasy(){
    score = 0;
    timeShow = 30;
    level = 1;
    document.getElementById("dot").style.width = "65px";
    document.getElementById("dot").style.height = "65px";
    timerSeconds();
    timer = setTimeout("gameStart()",1250);
}
function gameMedium(){
    score = 0;
    timeShow = 30;
    level = 2;
    timerSeconds();
    document.getElementById("dot").style.width = "55px";
    document.getElementById("dot").style.height = "55px";
    timer = setTimeout("gameStart()",900);
}
function gameHard(){
    score = 0;
    timeShow = 30;
    level = 3;
    timerSeconds();
    document.getElementById("dot").style.width = "45px";
    document.getElementById("dot").style.height = "45px";
    timer = setTimeout("gameStart()",750);
}