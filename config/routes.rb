Libraryan::Application.routes.draw do

  root :to => 'welcome#index'

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :users
  resources :sessions
  resources :password_resets

#  root to: 'articles#index'
#  resources :articles



end
