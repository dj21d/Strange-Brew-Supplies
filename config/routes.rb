Rails.application.routes.draw do
  get 'static_pages/show'

  get 'ingredients/index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'not_found' => 'pages#not_found'
  DynamicRouter.load
end
