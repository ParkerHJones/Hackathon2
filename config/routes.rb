Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'api/auth'

  namespace :api do 
    resources :buildings do 
      resources :jobs do
        resources :notes do 

        end 
      end 
    end
  end 
end
