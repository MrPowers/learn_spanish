class ConjugationQuizzesController < ApplicationController

  def new
    @conjugation_quiz = ConjugationQuiz.new
  end

  def create
    @conjugation_quiz = ConjugationQuiz.create(conjugation_quiz_params.merge(user_id: current_user.id))
    redirect_to conjugation_quiz_question_path(id: @conjugation_quiz.id)
  end

  def question
    @conjugation_quiz = ConjugationQuiz.find(params[:id])
    redirect_to conjugation_quiz_finished_path(id: @conjugation_quiz.id) if @conjugation_quiz.finished?
    @pronoun = [:yo, :tu, :el, :nosotros, :ellos].sample
    @pretty_pronoun = pretty_pronoun(@pronoun)
    @verb = Word.where(part_of_speech: "v").first(@conjugation_quiz.number_of_verbs).sample
    @correct_answer = ::Conjugate::Spanish.conjugate(:pronoun => @pronoun, :verb => @verb.spanish, :tense => @conjugation_quiz.tense.to_sym)
    @conjugation_answer = ConjugationAnswer.new
  end

  def finished
    @quiz = ConjugationQuiz.find(params[:id])
  end

  private

  def pretty_pronoun(pronoun)
    return "tú" if pronoun == :tu
    return ["él", "ella", "usted"].sample if pronoun == :el
    return ["ellos", "ellas", "ustedes"].sample if pronoun == :ellos
    pronoun.to_s
  end

  def conjugation_quiz_params
    params.require(:conjugation_quiz).permit(:tense, :number_of_questions, :number_of_verbs)
  end

end

