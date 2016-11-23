Rails.application.routes.draw do
  get 'index', to: 'welcome#index'

  root :to => 'welcome#index'

  get 'static_pages/show'

  get 'ingredients', to: 'ingredients#index'

  get 'equipment', to: 'equipment#index'

  get 'kits', to: 'kits#index'

  get 'recipes', to: 'recipes#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'not_found' => 'pages#not_found'
  DynamicRouter.load
end
