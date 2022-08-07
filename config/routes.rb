Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/members" => "members#index"
  post "/members" => "members#create"
  get "/members/:id" => "members#show"
  patch "/members/:id" => "members#update"
  delete "/members/:id" => "members#destroy"
end
