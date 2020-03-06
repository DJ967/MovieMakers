Rails.application.routes.draw do
  root 'sites#home'
  devise_for :users

  get :about, to: 'sites#about'

  resources :movies do
    resources :scenes
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
