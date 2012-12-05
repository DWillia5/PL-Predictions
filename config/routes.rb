PLPredictions::Application.routes.draw do
  devise_for :users

  get "points" => "points#index"

  get "/leaderboard" => "leaderboards#index"

  get "/results" => "results#index"

  resources :predictions
  get "/my_predictions" => "predictions#my_predictions"
  
  resources :fixtures

  root :to => 'leaderboards#index'


end
