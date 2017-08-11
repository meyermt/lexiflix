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
//= require_tree .
function updateCountForm(){
  var count = $('#student_count').find(":selected").text();
  $(".extra-fields").children().remove();
  for(var i = 0; i < count; i++) {

    // Create a name cell for student
    var $newDiv = document.createElement("div");
    $newDiv.className = "form-group";
    var $newLabel = document.createElement("label");
    var $labelText = document.createTextNode("Student " + (i + 1) + " Name");
    $newLabel.appendChild($labelText);
    var labelName = "student_name_" + i;
    $newLabel.setAttribute("for", labelName);
    $newDiv.append($newLabel);

    var $newInput = document.createElement("input");
    $newInput.setAttribute("type", "text");
    $newInput.setAttribute("name", labelName);
    $newInput.setAttribute("id", labelName);
    $newInput.autofocus = true;
    $newInput.className = "form-control";
    $newDiv.append($newInput);
    $(".extra-fields").append($newDiv);

    // Enter each student's lexical reading level
    var $newDiv = document.createElement("div");
    $newDiv.className = "form-group";
    var $newLabel = document.createElement("label");
    var $labelText = document.createTextNode("Student " + (i + 1) + " Username");
    $newLabel.appendChild($labelText);
    var labelName = "student_username_" + i;
    $newLabel.setAttribute("for", labelName);
    $newDiv.append($newLabel);

    var $newInput = document.createElement("input");
    $newInput.setAttribute("type", "text");
    $newInput.setAttribute("name", labelName);
    $newInput.setAttribute("id", labelName);
    $newInput.autofocus = true;
    $newInput.className = "form-control";
    $newDiv.append($newInput);
    $(".extra-fields").append($newDiv);

    // Enter each student's lexical reading level
    var $newDiv = document.createElement("div");
    $newDiv.className = "form-group";
    var $newLabel = document.createElement("label");
    var $labelText = document.createTextNode("Student " + (i + 1) + " Lexical Level");
    $newLabel.appendChild($labelText);
    var labelName = "student_level_" + i;
    $newLabel.setAttribute("for", labelName);
    $newDiv.append($newLabel);

    var $newInput = document.createElement("input");
    $newInput.setAttribute("type", "text");
    $newInput.setAttribute("name", labelName);
    $newInput.setAttribute("id", labelName);
    $newInput.autofocus = true;
    $newInput.className = "form-control";
    $newDiv.append($newInput);
    $(".extra-fields").append($newDiv);

  }
}

// setInterval(function(){
//   $(".testthing").append("<p>some stuff to read</p>");
//   console.log("you are running this")
//     //code goes here that will be run every 5 seconds.
// }, 1000);
