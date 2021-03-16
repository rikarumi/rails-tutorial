Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'home/index'
  resources :users
  get 'pages/info'
  # root to: redirect('/ideas')
  resources :ideas
  resources :statuses, only: :update
  root 'home#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
