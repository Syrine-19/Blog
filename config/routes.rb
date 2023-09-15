Rails.application.routes.draw do
 
  devise_for :users do 
      get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :users
   post '/auth/login', to: 'authentication#login'
  resources :articles do
    resources :comments
  end
  resources :activites 
  # resources :destinations
  resources :acceuil 
  resources :contacts
  get '/contact' , to: 'contact#index'
  root "acceuil#index"
  namespace :api do
    namespace :v1 do
      resources :articles
      resources :users
    end
  end
end
