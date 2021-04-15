Rails.application.routes.draw do
  devise_for :users
  root to: "bookrecords#index"
  resources :users, only: :show
end
