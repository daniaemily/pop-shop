Rails.application.routes.draw do
    resources :orders, only: [:index, :show, :create, :new]

    #get 'home/index'
    devise_for :users, :controllers => {:registrations => "registrations"}

    # :skip => :registerable
    devise_scope :user do
      get 'signup', to: 'devise/registrations#new'
    end

    devise_scope :user do
      get 'login', to: 'devise/sessions#new'
    end
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root to: 'home#index'

    resources :products, only: [:index, :show, :new, :create, :destroy, :edit]
end
