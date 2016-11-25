Rails.application.routes.draw do
  resource :customers, only: [:new, :create, :update, :destroy]
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]

  get 'index', to: 'welcome#index'

  root :to => 'welcome#index'

  get 'ingredients/:id' => 'ingredients#show', as: 'ingredient', id: /\d+/

  get 'static_pages/show'

  get 'ingredients', to: 'ingredients#index'

  get 'recipes', to: 'recipes#index'

  get '/equipment', :to => redirect('/Under_Construction')

  get '/kits', :to => redirect('/Under_Construction')

  get '/recipes', :to => redirect('/Under_Construction')

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'not_found' => 'pages#not_found'
  DynamicRouter.load
end
