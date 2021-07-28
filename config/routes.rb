Rails.application.routes.draw do
  get "/users" => "users#index"
  post "/users" => "users#create"
  get "/users/:id" => "users#show"
  patch "/users/:id" => "users#update"
  delete "/users/:id" => "users#destroy"

  get "/conversations" => "conversations#index"
  post "/conversations" => "conversations#create"
  get "/conversations/:id" => "conversations#show"
  delete "/conversations/:id" => "conversations#destroy"

  get "/messages" => "messages#index"
  post "/messages" => "messages#create"

  post "/sessions" => "sessions#create"
end
