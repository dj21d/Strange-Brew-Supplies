Rails.application.routes.draw do
  get '/login' => "sessions#new"
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]
  resources :customers, only: [:create, :update]
  resources :cust_addresses, only: [:create, :update, :destroy]

  get '/signup'  => 'customers#new'
  get "/myaccount", to: 'customers#show'
  get "/myaccount/edit", to: 'customers#edit'
  post "/myaccount/edit", to: 'customers#update'

  get "/myaccount/add_address", to: 'cust_addresses#new'
  post "/myaccount/add_address", to: 'cust_addresses#create'
  get "/myaccount/edit_address", to: 'cust_addresses#edit'
  post "/myaccount/edit_address", to: 'cust_addresses#update'


  get '/index', to: 'welcome#index'
  root :to => 'welcome#index'

  get '/ingredients/:id' => 'ingredients#show', as: 'ingredient', id: /\d+/
  get '/ingredients', to: 'ingredients#index'

  get '/equipment', :to => redirect('/Under_Construction')
  get '/kits', :to => redirect('/Under_Construction')
  get '/recipes', :to => redirect('/Under_Construction')

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'not_found' => 'pages#not_found'
  DynamicRouter.load
end
