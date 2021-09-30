# frozen_string_literal: true

module Api
  class PlatformsController < ApplicationController
    def index
      platforms = Rawg::Client.platforms

      render json: platforms
    end
  end
end
