class NounQuizzesController < ApplicationController

  before_filter :require_login

  def new
    @noun_quiz = NounQuiz.new
  end

  def create
    @noun_quiz = NounQuiz.create(noun_quiz_params.merge(user_id: current_user.id))
    redirect_to noun_quiz_question_path(id: @noun_quiz.id)
  end

  def question
    @noun_quiz = NounQuiz.find(params[:id])
    redirect_to noun_quiz_finished_path(id: @noun_quiz.id) if @noun_quiz.finished?
    @noun = Word.where(part_of_speech: ["nm", "nf"]).order("frequency ASC").first(@noun_quiz.number_of_nouns).sample
    @correct_answer = correct_answer(@noun)
    @noun_answer = NounAnswer.new
  end

  def finished
    @quiz = NounQuiz.find(params[:id])
  end

  private

  def correct_answer(noun)
    definite_article = ( noun.part_of_speech == "nm" ? "el" : "la" )
    "#{definite_article} #{noun.spanish}"
  end

  def noun_quiz_params
    params.require(:noun_quiz).permit(:number_of_questions, :number_of_nouns)
  end

end

