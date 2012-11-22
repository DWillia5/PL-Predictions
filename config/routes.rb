PLPredictions::Application.routes.draw do
  devise_for :users

  get "points" => "points#index"

  get "/leaderboard" => "leaderboards#index"

  get "/results" => "results#index"

  resources :predictions
  resources :fixtures

  root :to => 'leaderboards#index'


end
