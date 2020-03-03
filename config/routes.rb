Rails.application.routes.draw do
  resources :character_jobs
  resources :characters
  resources :jobs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
