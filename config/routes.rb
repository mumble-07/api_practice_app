# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    get '/creator-roles' => 'creator_roles#index'
    get '/developers' => 'developers#index'
    get '/games' => 'games#index'
    get '/genres' => 'genres#index'
    get '/platforms' => 'platforms#index'
    get '/platforms/lists/parents' => 'parents_platforms#index'
  end
end
