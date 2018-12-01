# Configure your routes here
# See: http://hanamirb.org/guides/routing/overview/

# Home route
root to: 'home#index'

# Page with posts
get '/posts', to: 'posts#index'
