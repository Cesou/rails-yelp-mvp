Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'restaurants#index'
  resources :restaurants, only: [:index, :show, :new, :edit, :update, :create] do
    resources :reviews, only: [:index, :new, :create]
  end
  resources :reviews, only: [ :show, :edit, :create]
end
