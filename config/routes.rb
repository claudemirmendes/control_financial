Rails.application.routes.draw do
  namespace :private do
    resources :account_payables
    resources :account_receivables
    resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end

  namespace :public do
    resources :users do
      collection do
        put :login
      end
      collection do
        put :register_user
      end
    end
 end
end
