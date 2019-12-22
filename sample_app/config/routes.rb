Rails.application.routes.draw do
  get 'password_resets/new'
  get 'password_resets/edit'
  get 'sessions/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
  get 'help' => 'static_pages#help'
  get 'about' => 'static_pages#about'
  get 'signup' => 'users#new'
  get 'login' => 'sessions#new'
  get 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy'
  resources :users
  resources :password_resets, only: [:new, :create, :edit, :update]
end