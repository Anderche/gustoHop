Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users

  root to: 'islands#index'

  resources :islands, only: [ :index, :show, :new, :create ] do
    resources :producers
  end
end
