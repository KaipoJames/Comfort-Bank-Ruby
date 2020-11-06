Rails.application.routes.draw do

  get "signup" => 'users#new'
  get "login" => 'sessions#new'
  get "logout" => 'sessions#destroy'
  resources :users
  resources :sessions
  resources :accounts do
    resources :transactions
  end
  
  # accounts/4/transactions/10
  
  root to: 'home#index'
  get "about" => 'home#about'
  get "contact" => 'home#contact'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
