# frozen_string_literal: true

module ApiRawg
  # rawg list parents platforms
  class ParentsPlatformsController < ApplicationController
    def index
      parents_platforms = Rawg::Client.parents_platforms

      render json: parents_platforms
    end
  end
end
