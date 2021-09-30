# frozen_string_literal: true

module ApiRawg
  # rawg genres
  class GenresController < ApplicationController
    def index
      genres = Rawg::Client.genres

      render json: genres
    end
  end
end
