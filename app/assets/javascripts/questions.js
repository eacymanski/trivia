  debugger
$(".question-answer").click(function() {
  debugger
  $.ajax({
    url: "questions/check_answer",
    data: {question_id: this.parent.data("question"), answer_id: this.data("answer")},
    success: function(data){
      if(data==true)
      {
        this.addClass("green");
      }
      else{
        this.addClass("red"):
        }
  }
  });
});


