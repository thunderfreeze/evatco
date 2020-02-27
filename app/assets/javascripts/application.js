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

function foo(){
  valbase = 20;
  val1 = parseInt(document.getElementById('textInput').value);
    val2 = parseInt(document.getElementById('textInput2').value);
    val3 = parseInt(document.getElementById('textInput3').value);
    val4 = parseInt(document.getElementById('textInput4').value);
    val5 = parseInt(document.getElementById('textInput5').value);



    /*if (val1 >= 20 && val2 > 1){
      val2 = 40 - val1;
      document.getElementById('textInput').value=val1;
      document.getElementById('textInput2').value=val2;
    }

    if (val1 > 39 && val3 > 1){
      val2 = 1;
      val3 = 59 - val1;
      document.getElementById('textInput').value=val1;
      document.getElementById('textInput2').value=val2;
      document.getElementById('textInput3').value=val3;
    }

    if (val1 > 59 && val4 > 1){
      val3 = 1;
      val4 = 78 - val1;
      document.getElementById('textInput').value=val1;
      document.getElementById('textInput2').value=val2;
      document.getElementById('textInput3').value=val3;
      document.getElementById('textInput4').value=val4;
    }

    if (val1 > 59 && val5 > 1){
      val4 = 1;
      val5 = 97 - val1;
      document.getElementById('textInput').value=val1;
      document.getElementById('textInput2').value=val2;
      document.getElementById('textInput3').value=val3;
      document.getElementById('textInput4').value=val4;
      document.getElementById('textInput5').value=val5;
    }*/

    /*if (val2 > 20 && val3 > 1){
      val3 = 30 - val2;
      document.getElementById('textInput2').value=val2;
      document.getElementById('textInput3').value=val3;
    }*/

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



    // var pizza = [100];
    // var hamburgers = [125];

    // var my config = {
    //   type: 'pie',
    //   series: [
    //   {
    //     values: pizza
    //   },
    //   {
    //     values: hamburgers
    //   }
    //   ]
    // };

}



