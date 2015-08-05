Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

  get 'exam_definitions/index'
  resources :questions
  resources :answers, only: [:create, :show]

  get '/next_question', to: "question_finder#next_question", as: "next_question"
  post '/set_exam_definition', to: "question_finder#set_exam_definition", as: "set_exam_definition"
  root to: "exam_definitions#index"
  ## old routes
  #get 'verb_exam_definitions/index'
  #get '/verbs/:tense/:id/answer', to: 'verb_questions#answer', as: "verb_question_answer"
  #get '/verbs/:tense/:id', to: 'verb_questions#show', as: "verb_question"
  #resources :verb_answers, only: [:create]
  #get '/verb_exams/:tense/next_question', to: "verb_exams#next_question", as: "next_question"
end
