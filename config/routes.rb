Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

  get '/welcome', to: "verb_diagnostic_exams#welcome", as: "welcome"
  get '/start_exam', to: "verb_diagnostic_exams#start_exam", as: "start_exam"
  get '/verb_next_question', to: "verb_diagnostic_exams#next_question", as: "verb_next_question"
  get '/verb_question/:id', to: "verb_diagnostic_exams#question", as: "verb_question"
  resources :verb_diagnostic_answers, only: [:create]

  get 'exam_definitions/index'
  resources :questions
  resources :answers, only: [:create, :show]

  get '/about', to: "static_pages#about", as: "about"

  get '/next_question', to: "question_finder#next_question", as: "next_question"
  post '/set_exam_definition', to: "question_finder#set_exam_definition", as: "set_exam_definition"
  root to: "exam_definitions#index"
end
