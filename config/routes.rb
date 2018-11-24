Rails.application.routes.draw do
  resources :api_users
  resources :transactions
  resources :coins
  get 'total' => "coins#total"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
