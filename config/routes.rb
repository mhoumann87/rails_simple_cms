Rails.application.routes.draw do
  # Root route
root 'demo#index'

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
