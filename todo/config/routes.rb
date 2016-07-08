Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

get '/lists', to: 'lists#index'
get '/tasks', to: 'tasks#index'

get '/lists'/ :id, to: 'lists#show'
get '/tasks'/ :id, to: 'tasks#show'
