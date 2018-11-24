Rails.application.routes.draw do
  resources :api_users
  resources :transactions
  resources :coins
  get 'coins/total' => "coins#total"
  get 'transactions/by_user' => "transactions#by_user"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
