Rails.application.routes.draw do
  resources :posts, except: %i(destroy)
end