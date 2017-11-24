Rails.application.routes.draw do
  namespace :private do
    resources :account_payables
    resources :account_receivables
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
end
