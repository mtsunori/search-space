Rails.application.routes.draw do


  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'shops#index'

  resources :shops, only: [:index, :show, :new, :create, :edit, :update] do
    collection do
      match 'search', to: 'shop#search', via: [:get, :post]
    end
    resources :events
  end

  resources :users, only: [:edit, :update, :show]


end

