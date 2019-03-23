Rails.application.routes.draw do

  get 'admin_users_controller/index'
  get 'admin_users_controller/new'
  get 'admin_users_controller/create'
  get 'admin_users_controller/edit'
  get 'admin_users_controller/update'
  get 'admin_users_controller/delete'
  get 'admin_users_controller/destroy'
  # Root route
  root 'demo#index'

  get 'admin', :to => 'access#menu'
  get 'access/menu'
  get 'access/login'
  post 'access/attempt_login'
  get 'access/logout'

resources :subjects do
  member do
    get :delete
  end
end

resources :pages do
  member do
    get :delete
  end
end

resources :sections do
  member do
    get :delete
  end
end

# Simple route 
# created by "rails generate controller" 
  get 'demo/index'
  get 'demo/hello'
  get 'demo/other_hello'
  get 'demo/escape_output'

# Default rout
# may go away in future versions of Rails
#  get ':controller(/:action(/:id))'

end
