# frozen_string_literal: true

module ApiRawg
  # rawg games
  class GamesController < ApplicationController
    def index
      games = Rawg::Client.games

      render json: games
    end
  end
end
