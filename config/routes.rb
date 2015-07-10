Rails.application.routes.draw do
  devise_for :users
  root :to => 'home#index'

  resources :users
  resources :categories do
    resources :projects
  end
end
