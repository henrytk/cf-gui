Rails.application.routes.draw do
  get '/config/json', to: 'config#json'
  get '/api/*path', to: 'api#index'
  get '/', to: 'dashboard#overview'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
