Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations',
    sessions:      "users/sessions",
  }
  devise_scope :user do
    post    "sign_in",              to: "devise/sessions#new"
    delete  "sign_out",             to: "devise/sessions#destroy"
    get     "index",                to: "users/registrations#index"
    get     "profile",              to: "users/registrations#profile"
    get     "phone",                to: "users/registrations#phone"
    get     "phone_authentication", to: "users/registrations#phone_authen"
    get     "address",              to: "users/registrations#address"
    get     "creditcard",           to: "users/registrations#creditcard"
    get     "complete",             to: "users/registrations#complete"
    post    "complete",             to: "users/registrations#create"
  end

  root  "items#index"

  namespace :items do
    resources :searches, only: :index
  end

  resources :items do
    resources :comments, only: :create
    resource :favorites, only: [:create, :destroy]
    collection do
      #Ajaxで動くアクションのルートを作成
      get 'get_category_children', defaults: { format: 'json' }
      get 'get_category_grandchildren', defaults: { format: 'json' }
      get     "confirmation"
    end
  end

  resources :users, only: [:index, :edit, :update] do
    collection do
      get 'logout'
      get 'introduction'
      get 'exhibiting'
      get 'product'
      get 'progress'
      get 'completed'
      get 'favorite'
      get 'purchasing'
      get 'purchased'
    end
  end

  resources :card, only: [:new, :index, :create, :destroy]
  resources :addresses, only: [:update]

  resources :purchase, only: [:show] do
    post 'pay',                    to: 'purchase#pay', on: :member
    get 'done',                    to: 'purchase#done', on: :collection
  end
end