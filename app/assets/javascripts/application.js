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
    // var $div = $("<div>", {"class": "form-group"});
    // var $div = $("<label>", {"for": "student");
    // var $div = $("<input>", {id: "foo", "class": "a"});
    // $div.append()
    var $newDiv = document.createElement("div");
    $newDiv.className = "form-group";
    var $newLabel = document.createElement("label");
    var $labelText = document.createTextNode("Hello");
    $newLabel.appendChild($labelText);
    $newDiv.append($newLabel);
    $(".extra-fields").append($newDiv);
    //$(".extra-fields").append("<div class=>\"form-group\">");
  }
}
