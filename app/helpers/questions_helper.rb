module QuestionsHelper

  def user_answer_text_field(f)
    form = "<div class=user-answer>#{f.text_field(:user_answer, autofocus: true, class: "blueify", size: text_field_size, :autocomplete => :off)}<br><span class=answer-hint>#{@question.hint}</span></div>"
    @question.spanish.gsub("_____", form)
  end

  def text_field_size
    @question.answer.length + rand(1..5)
  end

end
