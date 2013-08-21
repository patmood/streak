Streak::Application.routes.draw do

  root :to => "main#index"
  resources :items

  get "/auth/:provider/callback" => "sessions#create"
  get "/signout" => "sessions#destroy", :as => :signout
  post "/items/order" => "items#order"

end
