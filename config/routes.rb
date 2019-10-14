Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'shops#index'

  resources :mypage, only: [:index] do
    member do
    get :logout
    end
  end

end
