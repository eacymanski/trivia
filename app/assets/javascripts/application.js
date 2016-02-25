// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//

//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require_tree .

$( document ).ready(function() {
  $(".question-answer").click(function() {
    var target = $(this);
    $.ajax({
      url: "/questions/check_answer",
      data: {id: target.parent().data("question"), answer_id: target.data("answer")},
      success: function(data){

        target.addClass("wrong");

        $(data['correct_answers']).each( function(i, answer_id) {
          $(".question-answer[data-answer='" + answer_id + "']").each( function(i, correct_answer) {
            $(correct_answer).removeClass("wrong");
            $(correct_answer).addClass("correct");
          });
        });

      }
    });
  });
});
