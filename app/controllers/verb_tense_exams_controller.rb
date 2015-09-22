class VerbTenseExamsController < ApplicationController

  before_filter :require_login

  def start_exam
    exam = VerbTenseExam.create(user_id: current_user.id, tense: params[:tense])
    redirect_to next_verb_tense_question_path(tense: exam.tense, exam_id: exam.id)
  end

  def next_question
    exam = VerbTenseExam.find(params[:exam_id])
    if exam.finished?
      redirect_to finish_verb_tense_exam_path(exam.id)
    else
      q = exam.next_question(params[:tense])
      redirect_to verb_tense_exam_question_path(verb_tense_exam_id: exam.id, id: q.id)
    end
  end

  def question
    @exam = VerbTenseExam.find(params[:verb_tense_exam_id])
    @question = Question.find(params[:id])
  end

  def finished_exam
    @exam = VerbTenseExam.find(params[:exam_id])
  end

end

