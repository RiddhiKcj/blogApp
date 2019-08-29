Rails.application.routes.draw do
  devise_for :users, :controllers => { omniauth_callbacks: "omniauth_callbacks" }
  get 'welcome/index'
  root 'articles#index'
  resources :users,  only: :index do
  	resources :articles
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
