# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home_page#home_page'
  namespace :api_rawg do
    get '/creator-roles' => 'creator_roles#index'
    
    get '/developers' => 'developers#index'
    get '/games' => 'games#index'
    get '/genres' => 'genres#index'
    get '/platforms' => 'platforms#index'
    get '/platforms/lists/parents' => 'parents_platforms#index'
    get '/publishers' => 'publishers#index'
    get '/stores' => 'stores#index'
  end

  namespace :api_challonge do
    get '/tournaments' => 'tournaments#index'
  end
end
