Rails.application.routes.draw do


  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'shops#index'

  resources :shops, only: [:index, :show, :new, :create, :edit, :update]

  resources :events

  resources :mypage, only: [:index] do
    member do
    get :logout
    end
  resources :users, only: [:edit, :update]
  end

end
