// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .





function rangeSlider1(){
  var range1 = document.querySelector('#range1').value;
  console.log(range1);
  document.getElementById('score1').value = range1;
}

function rangeSlider2(){
  var range2 = document.querySelector('#range2').value;
  console.log(range2);
  document.getElementById('score2').value = range2;
}

function rangeSlider3(){
  var range3 = document.querySelector('#range3').value;
  console.log(range3);
  document.getElementById('score3').value = range3;
}

function rangeSlider4(){
  var range4 = document.querySelector('#range4').value;
  console.log(range4);
  document.getElementById('score4').value = range4;
}

function rangeSlider5(){
  var range5 = document.querySelector('#range5').value;
  console.log(range5);
  document.getElementById('score5').value = range5;
}








function oui(){
  var icon = document.querySelector('.icon');
  icon.classList.toggle('active');
  var menuContainer = document.querySelector('.menu-container');
  menuContainer.classList.toggle('active');
}



function updateTextInput1(val1) {
  document.getElementById('textInput').value=val1;
  foo();

}

function updateTextInput2(val2) {
  document.getElementById('textInput2').value=val2;
  foo();
}

function updateTextInput3(val3) {
  document.getElementById('textInput3').value=val3;
  foo();
}

function updateTextInput4(val4) {
  document.getElementById('textInput4').value=val4;
  foo();
}

function updateTextInput5(val5) {
  document.getElementById('textInput5').value=val5;
  foo();
}


// vertical slider

function updateslider1() {
  slider1 = parseInt(document.getElementById('slider1').value);
  console.log(slider1);
  document.getElementById('output1').innerHTML = slider1;
}

function updateslider2() {
  slider2 = parseInt(document.getElementById('slider2').value);
  console.log(slider2);
  document.getElementById('output2').innerHTML = slider2;
}

function updateslider3() {
  slider3 = parseInt(document.getElementById('slider3').value);
  console.log(slider3);
  document.getElementById('output3').innerHTML = slider3;
}

function updateslider4() {
  slider4 = parseInt(document.getElementById('slider4').value);
  console.log(slider4);
  document.getElementById('output4').innerHTML = slider4;
}

function updateslider5() {
  slider5 = parseInt(document.getElementById('slider5').value);
  console.log(slider5);
  document.getElementById('output5').innerHTML = slider5;
}







function foo(){
  valbase = 20;
  val1 = parseInt(document.getElementById('textInput').value);
    val2 = parseInt(document.getElementById('textInput2').value);
    val3 = parseInt(document.getElementById('textInput3').value);
    val4 = parseInt(document.getElementById('textInput4').value);
    val5 = parseInt(document.getElementById('textInput5').value);


    var finalResult = val1 + val2 + val3 + val4 + val5;
    var convertisseur = finalResult / 100;
    var test1 = val1 / convertisseur;

    var test2 = val2 / convertisseur;

    var test3 = val3 / convertisseur;

    var test4 = val4 / convertisseur;

    var test5 = val5 / convertisseur;

    var test6 = finalResult / convertisseur;


     document.getElementById('newVal1').value=Math.round(test1);
     document.getElementById('newVal2').value=Math.round(test2);
    document.getElementById('newVal3').value=Math.round(test3);
     document.getElementById('newVal4').value=Math.round(test4);
    document.getElementById('newVal5').value=Math.round(test5);
     document.getElementById('newVal6').value=Math.round(test6);
    document.getElementById('textInput6').value=Math.round(finalResult);







}




