Rails.application.routes.draw do
  devise_for :users
  root 'top#top'
  get 'top/top'
  get 'quesview/index'
  get 'send/index'
  get 'teacher/index'
  post 'send/create'
  post 'answer/update'
  get 'sessions/new'
  resources :answer
  post 'answer/destroy'
end
