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

    // Enter each student's email
    var $newDiv = document.createElement("div");
    $newDiv.className = "form-group";
    var $newLabel = document.createElement("label");
    var $labelText = document.createTextNode("Student " + (i + 1) + " Email");
    $newLabel.appendChild($labelText);
    var labelName = "student_email_" + i;
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

var tag = document.createElement('script');

tag.src = "https://www.youtube.com/iframe_api";
var firstScriptTag = document.getElementsByTagName('script')[0];
firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

// 3. This function creates an <iframe> (and YouTube player)
//    after the API code downloads.
var player;
function onYouTubeIframeAPIReady() {
  player = new YT.Player('player', {
    height: '390',
    width: '640',
    videoId: '5imNMZDGQ4Y',
    events: {
      'onReady': onPlayerReady,
      'onStateChange': onPlayerStateChange
    }
  });
}

// 4. The API will call this function when the video player is ready.
function onPlayerReady(event) {
  event.target.playVideo();
}

// 5. The API calls this function when the player's state changes.
//    The function indicates that when playing a video (state=1),
//    the player should play for six seconds and then stop.
var done = false;
function onPlayerStateChange(event) {
  // if (event.data == YT.PlayerState.PLAYING && !done) {
  //   setTimeout(stopVideo, 6000);
  //   done = true;
  // }
}
function stopVideo() {
  player.stopVideo();
}

setInterval(function(){
  $(".testthing").append("<p>some stuff to read</p>");
  console.log("you are running this")
    //code goes here that will be run every 5 seconds.
}, 1000);
