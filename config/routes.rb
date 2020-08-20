Rails.application.routes.draw do
  resources :restaurants, only: [:index, :create, :new, :show] do
    resources :reviews, only: [:create, :new]
  end
  resources :reviews, only: [ :destroy ]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
