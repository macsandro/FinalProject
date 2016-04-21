Rails.application.routes.draw do  
  resources :customers do 
    resources :projects, dependent: :destroy
  end
  devise_for :users
  root "pages#home"
  get "about" =>"pages#about"
end
