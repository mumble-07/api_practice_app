# frozen_string_literal: true

module ApiChallonge
  # rawg creator roles
  class TournamentsController < ApplicationController
    def index
      tournaments = Challonge::Client.tournaments

      render json: tournaments
    end
  end
end
