Rails.application.routes.draw do
  



  

  resources :news_blogs

  resources :travel_blogs

  resources :drink_blogs

  resources :eat_blogs

  

  devise_for :users
  root 'display#index'
end
