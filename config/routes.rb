Rails.application.routes.draw do
  devise_for :users

  get 'exam_definitions/index'
  resources :questions
  get '/questions/:id/answer', to: 'questions#answer', as: "question_answer"
  resources :answers, only: [:create, :show]

  root to: "exam_definitions#index"
  ## old routes
  get 'verb_exam_definitions/index'
  get '/verbs/:tense/:id/answer', to: 'verb_questions#answer', as: "verb_question_answer"
  get '/verbs/:tense/:id', to: 'verb_questions#show', as: "verb_question"
  resources :verb_answers, only: [:create]
  get '/verb_exams/:tense/next_question', to: "verb_exams#next_question", as: "next_question"
end
