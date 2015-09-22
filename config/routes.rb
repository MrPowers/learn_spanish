Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

  get '/start_verb_exam/:tense', to: "verb_tense_exams#start_exam", as: "start_verb_exam"
  get '/finish_verb_tense_exam/:exam_id', to: "verb_tense_exams#finished_exam", as: "finish_verb_tense_exam"
  get '/next_verb_tense_question/:tense/:exam_id', to: "verb_tense_exams#next_question", as: "next_verb_tense_question"
  get '/verb_tense_exams/:verb_tense_exam_id/questions/:id', to: "verb_tense_exams#question", as: "verb_tense_exam_question"
  resources :verb_tense_answers, only: [:create, :show]

  get '/start_exam', to: "verb_diagnostic_exams#start_exam", as: "start_exam"
  get '/finish_exam', to: "verb_diagnostic_exams#finished_exam", as: "finished_exam"
  get '/finished_perfection', to: "verb_diagnostic_exams#finished_perfection", as: "finished_perfection"
  get '/verb_next_question', to: "verb_diagnostic_exams#next_question", as: "verb_next_question"
  get '/verb_question/:id', to: "verb_diagnostic_exams#question", as: "verb_question"
  resources :verb_diagnostic_answers, only: [:create, :show]

  get 'exam_definitions/index'
  resources :questions
  resources :answers, only: [:create, :show]

  get '/about', to: "static_pages#about", as: "about"

  get '/next_question', to: "question_finder#next_question", as: "next_question"
  post '/set_exam_definition', to: "question_finder#set_exam_definition", as: "set_exam_definition"

  get '/liz', to: "agencies#liz", as: "liz"
  root to: 'agencies#index'
end
