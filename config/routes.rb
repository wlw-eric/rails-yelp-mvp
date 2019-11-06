Rails.application.routes.draw do
  resources :restaurants, only: [:show, :edit, :update, :destroy, :index, :new, :create, :destroy] do
      resources :reviews, only: [:new, :show, :create, :edit, :update, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
