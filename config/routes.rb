Rails.application.routes.draw do
  namespace :admin do
    resources :preferences, only: [:index]
  end
  
  devise_for :users
  resources :posts
  resources :projects
  resources :contacts, only: [:new, :create]
  get 'welcome/index'
  root 'welcome#index'

  get '*path' => redirect('/')

end
