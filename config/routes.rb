require 'api_version_constraint'

Rails.application.routes.draw do
  # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
<<<<<<< HEAD
  namespace :api, defaults: { format: :json }, constraints: { subdomain: 'api' }, path: '/' do
    namespace :v1, path: '/', constraints: ApiVersionConstraint.new(version: 1, default: true) do 
      resources :users, only: [:show, :create, :update, :destroy]
    end
  end
=======
  # devise_for :users
  
  #namespace :api, defaults: { format: :json }, constraints: { subdomain: 'api' }, path: "/" do
  #  namespace :v1, path:"/", constraints: ApiVersionConstraint.new(version: 1, default: true) do
  #    resources :users
  #  end
  #end

  namespace :api, defaults: { format: :json }, constraints: { subdomain: 'api' }, path: '/' do
    namespace :v1, path: '/', constraints: ApiVersionConstraint.new(version: 1, default: true) do 
      resources :users, only: [:show]
    end
  end

>>>>>>> cba18897da9a6b3e7c93f6a78958a5bcf25825dd
end
