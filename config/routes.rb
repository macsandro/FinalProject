Rails.application.routes.draw do  
  resources :customers do
  end
  devise_for :users
  root "pages#home"
  get "about" =>"pages#about"
end
