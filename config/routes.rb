Rails.application.routes.draw do
  get 'coins/total' => "coins#total"
  get 'transactions/by_user' => "transactions#by_user"
  post '/transactions/deposit' => "transactions#deposit"
  post '/transactions/withdrawal' => "transactions#withdrawal"
  resources :api_users
  resources :transactions, only: [:index, :show, :create]
  resources :coins



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
