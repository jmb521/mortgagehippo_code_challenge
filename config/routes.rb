Rails.application.routes.draw do
  get 'coins/total' => "coins#total"
  get 'transactions/by_user' => "transactions#by_user"
  resources :api_users
  resources :transactions
  resources :coins

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
