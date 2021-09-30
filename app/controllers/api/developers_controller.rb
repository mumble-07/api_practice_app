# frozen_string_literal: true

module Api
  class DevelopersController < ApplicationController
    def index
      developers = Rawg::Client.developers

      render json: developers
    end
  end
end
