Rails.application.routes.draw do
  #get 'home/index'
  devise_for :users, :skip => :registerable
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'

  resources :products, only: [:index, :show, :new, :create, :destroy, :edit]
end
