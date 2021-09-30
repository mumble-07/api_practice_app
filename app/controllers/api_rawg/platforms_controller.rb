# frozen_string_literal: true

module ApiRawg
  # game platforms
  class PlatformsController < ApplicationController
    def index
      platforms = Rawg::Client.platforms

      render json: platforms
    end
  end
end
