Rails.application.routes.draw do

# Root route
root "demo#index"

# Simple route 
# created by "rails generate controller" 
  get 'demo/index'
  get 'demo/hello'
  get 'demo/other_hello'

# Default rout
# may go away in future versions of Rails
#  get ':controller(/:action(/:id))'

end
