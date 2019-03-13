Rails.application.routes.draw do

# Root route
root "demo#index"

# Simple route 
# created by "rails generate controller" 
  get 'demo/index'

# Default rout
# may go away in future versions of Rails
#  get ':controller(/:action(/:id))'

end
