# Configure your routes here
# See: http://www.rubydoc.info/gems/hanami-router/#Usage

post '/wines', to: 'wines#create'
get '/wines/new', to: 'wines#new'
get '/wines', to: 'wines#index'
get '/', to: 'home#index'
