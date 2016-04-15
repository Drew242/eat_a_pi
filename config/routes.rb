Rails.application.routes.draw do
  root to: 'welcome#landing'
  get '/auth/flickr/callback', to: 'sessions#create'
  get '/logout',               to: 'sessions#destroy'
end
