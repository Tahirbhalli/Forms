Rails.application.routes.draw do
  resources :users, only: [:new, :create, :index, :show, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "users#index"
end
