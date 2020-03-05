Rails.application.routes.draw do

  resources :hooks
   get '/', to: "users#index", as: 'welcome' 
 #  resources :character_junks
 #  resources :junks
   resources :character_jobs, only: [:create]
   resources :characters, only: [:show, :new, :create, :destroy, :update]
   resources :jobs
   resources :users, only: [:index, :new, :create, :show]
   resources :login, only: [:new, :create]
   delete "logout", to: "login#destroy", as: "log_out"
  

   # resources :jobs, only: [:index] do 
   #    resources :characters, only: [:create]
   #  end

   

   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end