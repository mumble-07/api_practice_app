# frozen_string_literal: true

module ApiRawg
  # rawg creator roles
  class PublishersController < ApplicationController
    def index
      publishers = Rawg::Client.publishers

      render json: publishers
    end
  end
end
